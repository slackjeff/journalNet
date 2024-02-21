```
 ▄▄▄██▀▀▀▒█████   █    ██  ██▀███   ███▄    █  ▄▄▄       ██▓     ███▄    █ ▓█████▄▄▄█████▓
   ▒██  ▒██▒  ██▒ ██  ▓██▒▓██ ▒ ██▒ ██ ▀█   █ ▒████▄    ▓██▒     ██ ▀█   █ ▓█   ▀▓  ██▒ ▓▒ 
   ░██  ▒██░  ██▒▓██  ▒██░▓██ ░▄█ ▒▓██  ▀█ ██▒▒██  ▀█▄  ▒██░    ▓██  ▀█ ██▒▒███  ▒ ▓██░ ▒░ 
▓██▄██▓ ▒██   ██░▓▓█  ░██░▒██▀▀█▄  ▓██▒  ▐▌██▒░██▄▄▄▄██ ▒██░    ▓██▒  ▐▌██▒▒▓█  ▄░ ▓██▓ ░ 
 ▓███▒  ░ ████▓▒░▒▒█████▓ ░██▓ ▒██▒▒██░   ▓██░ ▓█   ▓██▒░██████▒▒██░   ▓██░░▒████▒ ▒██▒ ░  
 ▒▓▒▒░  ░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░░ ▒░   ▒ ▒  ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░   ▒ ▒ ░░ ▒░ ░ ▒ ░░  
 ▒ ░▒░    ░ ▒ ▒░ ░░▒░ ░ ░   ░▒ ░ ▒░░ ░░   ░ ▒░  ▒   ▒▒ ░░ ░ ▒  ░░ ░░   ░ ▒░ ░ ░  ░   ░    
 ░ ░ ░  ░ ░ ░ ▒   ░░░ ░ ░   ░░   ░    ░   ░ ░   ░   ▒     ░ ░      ░   ░ ░    ░    ░       
 ░   ░      ░ ░     ░        ░              ░       ░  ░    ░  ░         ░    ░  ░       
                                                                                         
# journalNet
Daily journaling service
by slackjeff

# journalNet: Zines + ASCII
Bring back the fun!
by slackjeff and Demogorgon
```
**Instalation notes**
- Read the README files =)
- Install xinetd.
- Execute install.sh
- Restart xinetd service.
- Default port is tcp 2826
- Create file .journal inside a user home folder or copy a template and rename it to .journal
- Read client options ./journal -h
- Test with ./journal -B username@127.0.0.1 or ./journal -B username@your.dynamic.dns  
  (Remove "-B" to hide the Banner).  
- You can read ".journal's" with netcat (Tested with OpenBSD netcat):  
echo "username" | nc -N 127.0.0.1 2826 or echo "username" | nc -N your.dynamic.dns 2826    
echo "username" | nc -q 0 127.0.0.1 2826 or echo "username" | nc -q 0 your.dynamic.dns 2826  
  
```
Files
  ___
 /___\_________
|              |
|              |
|              |
|______________|
```
**install.sh**: It's the installation script (Need chmod +x). You can delete it from the project folder after the installation.  
**journal**: It's the client program stays at journalNet folder (Need chmod +x). Launch with ./journal -B yourusername@127.0.0.1 or ./journal -B yourusername@your.dynamic.dns  
**journalnet**: It's the server program, stays at /usr/local/sbin/ folder. You can delete it from the project folder after the installation.  
**.journal**: It's your journal file, got to stay directly at the user home folder.  
**bookmarks.txt**: It's your journal bookmarks file, just add or delete journals addresses in this file and relaunch the client with ./journal -b  
**banner folder**: It's where the "sh" ASCII files are, your could add or delete ASCII Banners, just remember to "chmod +x" to make it work.  
**docs folder**: Info and troubleshooting.  
**journal_templates folder**: Templates for your .journal  
**readme file**: Basic info. 
**log files**: There's two log files, the server and visitors counter log, in /var/log/journalnet.log and the Guestbook file in /var/log/journalnet_messages.log  

_Made by slackjeff sorcery with Demogorgon's scratches and dents._  

## Contribuitors THKS ❤

<a href = "https://github.com/slackjeff/web/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=slackjeff/journalNet"/>
</a>
