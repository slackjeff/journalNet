Debian/Ubuntu/Mint

First install xinetd (sudo apt-get install xinetd)
Open tcp port 2886 on your firewall (sudo ufw allow 2826)
If the installation script for the "journalNet" gives errors such as "unexpected operator" or repeats the "xinetd is required" message and freeze:
Then change the first line of the installation script from "#!/bin/sh" to "#!/bin/bash" and run the journalNet installation script again.
If you want to run your journal first on your localhost for test just use theaccountwherejournalis@127.0.0.1
Last step, restart xinetd (sudo /etc/init.d/xinetd restart)

Security tip: Create a regular user (without sudo access) to publish "journalNet" from his home directory.
