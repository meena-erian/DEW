# DEW
A fancy way of naming my application "Drive Explorer for Windows"
##Overview
A common problem that annoys many windows users is that developing a malware to spreads like an epidemic from PC to pin drive and vice versa is too easy. One thing I like the most about windows is that as a developer, it supplies me by extra more power.
I hope my extremely simple application protect some inexpert users from most nowadays computer worms.
##History
####Back to Windows 2003 (XP)
Microsoft made a double-edged sword named auto-play that means that you could specify any file in the drive to be luanched once the drive is mounted... So, lets say you have a file named *setup.exe*, all you have to do is:
 1. Create a new file in the pin-drive (not inside any folders) and name it *autorun.inf* (character case insensitive)
 2. Open it with notepade and add the following lines of plain text...
```
[AutoRun]
open=setup.exe
```

Well, I think the above code does not reqire any additional explanation. But, that's not everything!
```
[AutoRun]
open = setup.exe 
shell\open\commaad = setup.exe 
shell\explore\command = setup.exe 
shell\autoplay\command = setup.exe 
icon = icon.ico
```
The above *autorun.inf* specifies what each of the [open], [explore], and  [autoplay] commands dose. So, lets say ***setup.exe*** is a virus, no matter what you do, the viruse will be launched. And finally, just like TNT, it was mainly used for evil and it was removed from all later vesions (not completely. the icon line is supported).

Later on, virus developers had some trouble making their application run by itself after disbling autorun. And the main challenge was switched to ***"How to make the user run the virus?"*** but unfortunately, that wasn't really a "*challend*"

####Folder-like Shortct trick
Currently the most common trick to make the user run the virus is:
 1. The virus hides the original content of the pin-drive
 2. The virus displays nothing in the pin drive but a shortcut to the virus
 3. When the user runs the virus, it trys to demonstrate that everything is fine by opening the folder containing the original content of the pin-drive.
And please note that:
 1. Most versions of windows allow any item (file or folder) to be represented in any icon.
 2. The user clicks on the shortcut because it seems to be the only way to the drive's content.

##Instructions
To install DEW, just save [this](https://raw.githubusercontent.com/meena-hanna/DEW/master/DEW.vbs) visual basic script (of size less than 1KB) on your startup folder.
Note: the startup folder is located in C:\Users\[user]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup for windows 7-8
