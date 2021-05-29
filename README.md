## Installation

* 1-) Get Ubuntu, Manjaro or Arch running
I won't assist you with this step. You have to do the research and installation yourself on this
* 2-) Install git
If you run Ubuntu you can do that by running (sudo apt-get update; sudo apt-get install git -y)
If you run CentOS 7 you can do that by running (sudo yum -y install git)
If you run CentOS 8 you can do that by running (sudo dnf -y install git)
If you run Archlinux you can do that by running (sudo pacman -S git)
* 3-) Get the repo
cd; git clone https://github.com/cyrexlinuz/catbot-setup
* 4-) Run the installer
./install-catbots
* 5-) Create Steam accounts on accgen.cathook.club
* 6-) Write account information (user:pass) into catbot-setup/accounts.txt
* 7-) Fire Cathook IPC up
./start
* 8-) Login to it from browser
* 9-) Input the password
* 10-) Type the number of bots you would like to run
* 11-) If you don't see bots, Click refresh list. Then click Restart All to start all bots.

You can contact me if you have any questions
www.botpolice.cf

## Required Dependencies (If automatic installation fails for a reason)
Ubuntu/Debian
`sudo apt-get install nodejs firejail net-tools x11-xserver-utils`

Fedora/Centos
`sudo dnf install nodejs firejail net-tools xorg-x11-server-utils`

Arch/Manjaro (High Support)
`sudo pacman -Syu nodejs npm firejail net-tools xorg-xhost`
