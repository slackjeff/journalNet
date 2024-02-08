#!/bin/bash

################################
# Vars                         #
################################
services=/etc/services
xinetd=/etc/xinetd.d/

################################
# Tests                        #
################################
[ $UID -ne 0 ] && { printf 'Please need root.\n'; exit 1 ;}

if ! type -p xinetd 1>/dev/null; then
    printf "xinetd is necessary.\n"
    exit 1
fi

################################
# Main                         #
################################

while true; do
    printf "Enter the IP/Domain you want to use. Default is 127.0.0.1 for location.\n"
    printf "If you want to use it for internet use your fixed-ip or example.com\n"
    printf ": "
    read ip
    printf "$ip Correctly? [Y/n] "
    read enter
    case $enter in
        y|Y|s|"") break ;;
        n|N) continue ;;
    esac
done
[ -z $ip ] && ip=127.0.0.1

echo "Send journanet to $services"
if ! grep -q journalnet $services; then
    cat << EOF >> $services
journalnet  2826/tcp    # JournalNet Daily Journal
EOF
fi
#xinetd journalnet service configuration
#Initially was choosed "log_type = SYSLOG daemon info" but was added a visitors counter and more log details, so this configuration was changed.
echo "Send journanet to $xinetd/journalnet"
cat << EOF >> $xinetd/journalnet
service journalnet
{
        disable         = no
        bind            = $ip
        socket_type     = stream
        protocol        = tcp
        log_type        = FILE /var/log/journalnet.log
        log_on_success += PID USERID HOST DURATION EXIT
        log_on_failure += USERID
        server          = /usr/local/sbin/journalnet
        user            = root
        instances       = UNLIMITED
        wait            = no
}
EOF

cp -v journalnet /usr/local/sbin/
chmod -v +x /usr/local/sbin/journalnet
chmod -v +x ./journal
chmod -v +x ./banner/*.sh
chmod -v 777 bookmarks.txt

printf "Restart 'xinetd' service!\n"
printf "Don't forget to create a plain text '.journal' file in the user's home page\n"
exit 0
