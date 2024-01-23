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
Bringing back the fun times!
by slackjeff and Demogorgon
```
**Instalation notes**
- Read the README files =)
- Install xinetd 
- Execute install.sh
- Restart xinetd service.
- Create file .journal on your home folder.
- Test with ./journal -B username@127.0.0.1 or ./journal -B username@your.dynamic.dns (Remove "-B" to hide the Banner).
- To edit your journal IP address modify the file: sudo nano /etc/xinetd.d/journalnet
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
**readme file**: Basic info.  

_Made by slackjeff sorcery with Demogorgon's scratches and dents._  


