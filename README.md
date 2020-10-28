# What it is about

This the list of websites people are procrastinating at. Use this list to enter and block these websites with various blockers including Windows parental controls, Apple Screentime and with anti-procrastination tools and plugins. The lists of websites are below.

# How to block websites

### Windows (for all apps, works for Windows XP to Windows 10)

- In Windows search toolbar type `Notepad`
- `Notepad` will appear in the list of apps
- Right-click on `Notepad` and select `Run as Administrator`. This will run Notepad app
- Select `File` and `Open` 
- Select `All Files` in File Types
- Enter `c:\windows\system32\drivers\etc\hosts` in the filename and click `Open`
- This `hosts` file will look something like this:

```
# websites
11.22.33.44 somesite.com
...
...
```

- Open [the list of all websites compiled by this tool](https://raw.githubusercontent.com/bytescout/list-of-procrastination-websites/main/hosts.txt) in a separate window
- Copy all lines
- Switch to Notepad and paste lines below the existing content
- Use `File` and `Save` in the menu in Notepad to save updated `hosts` file 
- Congratulations! Now all the websites from the list are blocked on your computer 

Another tutorial on changing `c:\windows\system32\drivers\etc\hosts` file: [How to update hosts file on Windows](https://helpdeskgeek.com/how-to/block-websites-using-hosts-file/) for details.

Alternatively, if you are not an experienced user, you may want to use Windows 10 built-in Parental Controls and add websites to be blocked manually. Here is the [tutorial](https://www.windowscentral.com/how-protect-little-ones-windows-defender-and-parental-controls)

### Apple devices (Mac, Macbook, iPad, iPhone) 

- Run Screentime settings on [Mac OSX desktop computers](https://support.apple.com/en-us/HT210387) or [iOS devices (iPhone, iPad](https://support.apple.com/en-us/HT208982)
- In `Content & Privacy Restrictions` - `Content Restrictions` go to `Web Content` and change to `Limit Adult Websites`
- Manually add websites from [sites-all.txt] into the list of blocked websites 

Setting up Screentime on iPhone or iPad that is used by kids? Beware of [ways kids use to hack Apple Screentime](https://bytescout.com/blog/bypass-screen-time-on-ipad-or-7-hacks-found-by-kids-to-walkaround-apples-parent-control.html)

### Ubuntu 

- Set app [Parental controls and blocking websites](https://help.ubuntu.com/community/ParentalControls#Do_It_Yourself_Allow-listing)
- Use [sites-all.txt] to add websites to the list of blocked websites

### Android

- TBD

# Lists of websites to block

Final lists:

- [sites-all.txt](sites-all.txt) - final list with all websites from all categories
- [hosts.txt](hosts.txt) - final list with websites to block, ready to to copy and paste into `c:\Windows\system32\drivers\etc\hosts` file on Windows

Source lists are in [this folder](/lists)

# Contribute

- add websites to lists
- add new lists into `/lists` folder. Name like this `sites-{category}` where category is the category of these websites.
- add websites without `www.` domains as `www.` versions are added automatically by the script
- finally run `bash generate.sh` to combine and compile all lists into final lists: `sites-all.txt` and `hosts.txt`
- commit and create a pull request 

# Authors

Eugene Mi https://github.com/emirn

Sponsors: 

- [ByteScout - AI powered tools for data extraction](https://bytescout.com)
- [PDF.co - API platform for data extraction and pdf](https://pdf.co)