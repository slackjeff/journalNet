```
                 ___        ___ ___   ___   ___  
       .'|  .'| |   |  .'|=|_.' '._|=|   |=|_.' 
     .'  |.'  |\|   |.'  |  ___      |   |      
     |   ||   | |   ||   |=|_.'      |   |      
 __  |   ||   | |  .'|   |  ___      `.  |      
`._|=|__.'|___| |.'  |___|=|_.'        `.| 
  _    _    _                 _    _    _
 _\"-._\"-._\"-._ journalNet _\"-._\"-._\"-._
                                       
# journalNet
Daily journaling service
by slackjeff

# journalNet: Zines + ASCII
Bring back the fun!
by slackjeff and Demogorgon
```
**Installation notes**
- Read the README files =)
- Install xinetd. Controls the journalnet service (service xinetd start | stop).
- Execute install.sh
- Restart xinetd service.
- Default port is tcp 2826
- Create file .journal inside a user home folder or copy a template and rename it to .journal
- Read client options ./journal -h
- Test with ./journal -B username@127.0.0.1 or ./journal -B username@your.dynamic.dns  
  (Remove "-B" to hide the Banner).
- In the Console pipe the Journal Client through less "-r" to scroll the ".journal" and colorize the Banner:  
./journal -B username@127.0.0.1 | less -r or ./journal -B username@your.dynamic.dns | less -r    
Tip:  Press ":q" to exit (Or use alternatives like tmux and screen). 
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
**xinetd**: Controls the journalnet service (service xinetd start | stop).     
**.journal**: It's your journal file, got to stay directly at the user home folder.  
**bookmarks.txt**: It's your journal bookmarks file, just add or delete journals addresses in this file and relaunch the client with ./journal -b  
**banner folder**: It's where the ".sh" ASCII files are, you could add or delete ASCII Banners, just remember to "chmod +x" to make it work.  
**docs folder**: Info and troubleshooting.  
**journal_templates folder**: Templates for your .journal  
**readme file**: Basic info.  
**log files**: There's two log files, the server and visitors counter log in /var/log/journalnet.log and the Guestbook file in /var/log/journalnet_messages.log  

_Made by slackjeff sorcery with Demogorgon's scratches and dents._  

## Contribuitors THKS ❤

<a href = "https://github.com/slackjeff/web/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=slackjeff/journalNet"/>
</a>
