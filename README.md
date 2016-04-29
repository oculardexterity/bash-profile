### Modifying terminal to be more user and git friendly.

![Terminal](https://raw.githubusercontent.com/abbott567/bash-profile/screenshots/Screenshots/terminal.png?raw=true "Terminal")

# How To

You will need to install git prompt. Run the following command in the terminal:

```curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh```

You will need to open your .bash_profile in an editor of some description. If you're using Atom, you can run the following command:

```atom ~/.bash_profile```

Alternatively you can edit it directly in the terminal with:

```nano ~/.bash_profile```

Paste in the code from the bash profile in the repo. To change the colour of the directories from CYAN, change BCYAN in the export to another colour from the list.

```export PS1=$BCyan' '$PathFull' '$Color_Off$String```

eg:

```export PS1=$BGreen' '$PathFull' '$Color_Off$String```

In terminal, you can choose Terminal > Preferences to change the defaul text and background colours.

![Preferences](https://raw.githubusercontent.com/abbott567/bash-profile/screenshots/Screenshots/prefs.png?raw=true "Preferences")
