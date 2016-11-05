# DEW
A fancy way of naming my application "Drive Explorer for Windows"
##Overview
A common problem that annoys many windows users is that developing a malware to spreads like an epidemic from PC to pin drive and vice versa is too easy. One thing I like the most about windows is that as a developer, it supplies me by extra more power.
I hope my extremely simple application protect many inexpert users from most nowadays computer worms.
##History
####Back to Windows 2003 (XP)
Microsoft made a double-edged sword named auto-play that means that you could specify any file in the drive to be luanched once the drive is mounted... So, lets say you have a file named setup.exe, all you have to do is:
1 - create a new file in the pin-drive (not inside any folders) and name it autorun.inf (character case insensitive)
2 - open it with notepade and add the following lines of plain text...
```
[AUTORUN]
open=setup.exe
```

Well, I think this code does not reqire any explanation. But, that's not everything!
```
[AUTORUN]

```
You could even specify what each of the [open], [explore], and  [autorun] commands dose. And finally, just like TNT, it was used mainly for evil and it was removed from all later vesions (not completely)
