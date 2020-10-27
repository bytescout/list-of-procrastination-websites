# What it is about

This the list of websites people are procrastinating at. Use this list to enter and block these websites with various blockers including Windows parental controls, Apple Screentime and with anti-procrastination tools and plugins. The lists of websites are below.

# How to blocking websites on Windows

### System level (works for all Windows versions from Windows XP to Windows 10)

Edit `c:\windows\system32\drivers\etc\hosts.txt` (in `As Administrator` mode) and add lines with websites like 

```
127.0.0.1 facebook.com
127.0.0.1 youtube.com
```

Here is [the list with all websites that you can copy and paste from](hosts.txt)

Check [How to update hosts file on Windows](https://helpdeskgeek.com/how-to/block-websites-using-hosts-file/) for details.

If you are not an experienced user please check Parenal Controls. [Tutorial for Windows 10](https://www.windowscentral.com/how-protect-little-ones-windows-defender-and-parental-controls)


### Apple devices (Mac, Macbook, iPad, iPhone) 

- [Mac OSX desktop computers](https://support.apple.com/en-us/HT210387)
- [iOS devices (iPhone, iPad](https://support.apple.com/en-us/HT208982)

Blocking from Kids? Beware of [various ways kids are hacking Apple Screentime](https://bytescout.com/blog/bypass-screen-time-on-ipad-or-7-hacks-found-by-kids-to-walkaround-apples-parent-control.html)

### Ubuntu 

- [Setting app Parental controls and blocking websites](https://help.ubuntu.com/community/ParentalControls#Do_It_Yourself_Allow-listing)

### Android

- TBD

# Lists of websites

- [sites-all.txt](sites-all.txt)
- [sites-social-networking.txt](sites-social-networking-sites.txt)
- [sites-memes.txt](sites-memes.txt)
- [sites-news.txt](sites-news.txt)
- [sites-video.txt](sites-video.txt)
- [sites-gaming.txt](sites-gaming.txt)

# How to contribute

- add websites to lists
- run `bash generate.sh` to clean and combine all lists into `sites-all.txt` and into `hosts.txt`
- commit and create a pull request 

If you are adding new list, please update `generate.sh`
