#! /usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

#################################
# Sleep settings                #
#################################

# Disable put hard disks to sleep when possible
sudo pmset -a disksleep 0

# Disable display sleep
sudo pmset -a displaysleep 0

# Disable powernap
sudo pmset -a  powernap 0

# Computer never sleeps
sudo systemsetup -setcomputersleep Never

# System Preferences > Desktop & Screen Saver > Start after: Never
defaults -currentHost write com.apple.screensaver idleTime -int 0

#################################
# Keyboard/mouse                #
#################################

# System Preferences > Keyboard >
# defaults write NSGlobalDomain KeyRepeat -int 2

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# System Preferences > Keyboard >
# defaults write NSGlobalDomain InitialKeyRepeat -int 15

# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -float 10.0
defaults write NSGlobalDomain InitialKeyRepeat -float 10.0

# normal minimum is 2 (30 ms)
defaults write NSGlobalDomain KeyRepeat -float 1.0
defaults write -g KeyRepeat -float 1.0

# Disable auto correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Change mouse speed to fast
# defaults write -g com.apple.mouse.scaling 5.0

#################################
# Finder/misc settings          #
#################################

# Show all extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Adds ability to quit Finder
defaults write com.apple.finder QuitMenuItem -bool true; killall Finder

# Disable automatically rearrange spaces
defaults write com.apple.dock mru-spaces -bool false

# Wipe all default applications from the dock
defaults write com.apple.dock persistent-apps -array

# Show hard drives on the desktop
 defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
  defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
  defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
  defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# Change default Finder view to column
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# System Preferences > Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.5

# System Preferences > Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# Disable The “Are You Sure You Want To Open This Application?” Dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Show the ~/Library and /Volumes folder
sudo chflags nohidden ~/Library
sudo chflags nohidden /Volumes

# Top left screen corner → Mission Control
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0

# Bottom left screen corner → Desktop
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
# Top left screen corner → Mission Control
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0

# Prevent iTunes from opening automatically when devices are plugged in
  defaults write com.apple.iTunesHelper ignore-devices 1

# Prevent Time Machine from prompting to use new hard drives as backup volume
  defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true


#################################
# Applications                  #
#################################

# TextEdit
# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Default launch applications
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Alfred 4.app", hidden:false}'
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Backup and Sync.app ", hidden:false}'
