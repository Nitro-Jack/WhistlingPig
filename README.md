
# WhistlingPig
Funny backdoor for beginners to learn about spotting malware on Linux Systems. Works across all linux environments that support .desktop files. 

### Additions Needed:
Delete session information, along with log in mechanisms (might just move to reboot the pc in that event)

## Edge cases I found:
* Ubntu requires you to give it executbable permision, which can be done via right click or just your standard chmod command

## How it works TLDR:
Mimics a desktop icon for any program you set it to, which then calls upon a premade script that opens said progam, and anything else you want to run (key loggers, pig screaming etc. 😅😅)

Serves as a post exploit system if you have access to the workstation. Should note even if the user uses the terminal, you could do the same thing by just changing their aliases. 

## Longer Run Down on how it works:
There a 2 files you need for this to work, one being any simple .desktop file. This file will serve as your activation for the script you want to run. 
* NOTE: This doesnt give that file exectuable permissions, you'll still have to set it up with permissions to excute

.desktop files are pretty easy to understand
* Name= (The name of the progam you want to run, this will give the illusion of what the user thinks thier going to run.)
* Comment= Something Something 
* Exec= (path to your exe or script you want to run)
* Icon= (path to your icon image)
* Type= (Application) there are more, just have to commit so i can runoff and do something. 
* Terminal= (true or false)
* StartupNotify= (true or false)

wine "/home/johndoe/Desktop/Windows Applications/Embarcadero_Dev-Cpp_6.3_TDM-GCC_9.2_Portable/devcpp.exe"
