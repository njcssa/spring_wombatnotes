# Installing Software

- Python3
- VSCode
- Git
- Wombat Game

## Windows

### Python3

1. Paste this link in your browser: https://www.python.org/ftp/python/3.6.8/python-3.6.8.exe
2. Download the program
3. Run through the installer until finished
4. Check Python3 is installed by opening the CMD and typing "python3"
5. If a python3 shell comes up, then it is installed correctly.

### VSCode

1. Paste this link into your browser: https://aka.ms/win32-user-stable
2. Run through the installer until the brogram is installed.

### Git

1. Paste this link into your browswer: https://git-scm.com/download/win
2. Run through the installers and click all the defaults

### Wombat Game

1. open up the CMD
2. cd onto the desktop
3. type: git clone https://github.com/njcssa/summer2019_wombatgame.git
4. cd into the directory by typing: cd summer2019_wombatgame
5. type: python3 -m venv venv
6. type: venv\bin\Scripts\activate.bat
7. type: pip install -r requirements.txt



## Linux/MacOS

### Python3

Linux distributions will already have Python3 installed so you don't have to worry about this step. Macbooks should follow the directions.

1. Paste this link in your browser: https://www.python.org/ftp/python/3.6.8/python-3.6.8-macosx10.6.pkg
2. Run through the installer until finished
3. Check Python3 is installed by opening the terminal and typing "python3"
4. If a python3 shell comes up, then it is installed correctly.

### VSCode

Linux link: https://go.microsoft.com/fwlink/?LinkID=760868

Mac link: https://go.microsoft.com/fwlink/?LinkID=620882

1. Go through the installer

### Git

Linux:
1. open the terminal
2. type: sudo apt-get install git-core

Mac:
1. paste this into your webbrowswer: https://sourceforge.net/projects/git-osx-installer/files/git-2.22.0-intel-universal-mavericks.dmg/download?use_mirror=autoselect
2. run through the installer and click the defaults

### Wombat Game

1. open up the terminal
2. cd onto the desktop
3. type: git clone https://github.com/njcssa/summer2019_wombatgame.git
4. cd into the directory by typing: cd summer2019_wombatgame
5. type: python3 -m venv venv
6. type: source ./venv/bin/activate
7. type: pip install -r requirements.txt