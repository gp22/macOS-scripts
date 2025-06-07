#!/bin/bash

echo
echo "FINAL SETUP AND CONFIGURATION"

# ------------------------------------------------------------------------

echo
echo "TURNING OFF BREW ANALYTICS"
echo

/opt/homebrew/bin/brew analytics off

if [ $? -ne 0 ]; then
  echo
  echo "Failed to turn off Brew analytics."
  echo

  exit 1
else
  echo
  echo "Done turning off Brew analytics!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "MAKING MAINTENANCE SCRIPTS EXECUTABLE"
echo

chmod +x terminal-maintenance && \
chmod +x terminal-search && \
chmod +x terminal-updates

if [ $? -ne 0 ]; then
  echo
  echo "Failed to make maintenance scripts executable."
  echo

  exit 1
else
  echo
  echo "Done making maintenance scripts executable!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "CHANGING DEFAULT SHELL TO ZSH"
echo

chsh -s $(which zsh)

if [ $? -ne 0 ]; then
  echo
  echo "Failed to change default shell."
  echo

  exit 1
else
  echo
  echo "Done changing default shell!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "INSTALLING OH-MY-ZSH"
echo

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ $? -ne 0 ]; then
  echo
  echo "Failed to install Oh My Zsh."
  echo

  exit 1
else
  echo
  echo "Done installing Oh My Zsh!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "CLONING DOTFILES"
echo

git clone https://github.com/gp22/dotfiles.git ~/.config/dotfiles

if [ $? -ne 0 ]; then
  echo
  echo "Failed to clone dotfiles."
  echo

  exit 1
else
  echo
  echo "Done cloning dotfiles!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "INSTALLING DOTFILES"
echo

cd ~/.config/dotfiles

if [ $? -ne 0 ]; then
  echo
  echo "Failed changing to dotfiles directory."
  echo

  exit 1
fi

./install.sh

if [ $? -ne 0 ]; then
  echo
  echo "Failed installing dotfiles."
  echo

  exit 1
else
  echo
  echo "Done installing dotfiles!"
  echo
  echo "Reboot now..."
fi
