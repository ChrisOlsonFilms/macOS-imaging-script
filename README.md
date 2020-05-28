# On brand new machine disable SIP before running script.
If you don't do this, scripting addition from yabai won't install correctly. It has to be installed with SIP disabled.

## Fresh install outdated
`curl -s https://raw.githubusercontent.com/ChrisOlsonFilms/macOS-imaging-script/master/fresh-install | sh`

# macOS-imaging-script
Clone this repository:

```
cd ~/Documents
git clone https://github.com/ChrisOlsonFilms/macOS-imaging-script.git
```
## Run fresh-install
This will install all basic apps and command line tools

## Configure Core Apps for symlinks
Login to the following: 

 * Sign into Chrome + Myki
 * Backup and Sync
   * Config folder
 * Google Drive to get serial numbers
 
 
 ## Run Preferences
 This will change all MacOS preferences
 
 # Run symlinks
 Run this after Backup and Sync is setup
 
 ## Manual app install:

Creative Cloud:
* Premiere Pro
* After Effects
* Lightroom
* Photoshop
* Media Encoder
* Audition

Red Giant:

* Plural Eyes
* Offload
* Black Magic Speed Test

## System Preferences screenshots

Keyboard shortcuts disable spotlight
Keyboard use F1, F2 etc keys as standard functional keys
Setup screenshot shortcuts 

## Sign into all accounts

* Evernote
* Mail accounts
* Discord
* iCloud
* Dropbox
* Screenflow

Sign into iCloud
Set  default launch applications
Depending on machine, set refresh rate of display
Require no password for login

## Keep apps updated
```
brew update           # download app updated formulas
brew outdated         # what’s old?
brew upgrade          # upgrade everything locally
```

# list all brew casks installed & their versions

```
brew cask outdated
brew cask upgrade
cleanup everything
brew cleanup
```

## Update MacOS apps
```
mas outdated    # what's old
mas upgrade     # upgrade everything
```
