#!/bin/bash

echo
echo "INSTALLING HOMEBREW"
echo

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [ $? -ne 0 ]; then
  echo
  echo "Failed to install HomeBrew."
  echo

  exit 1
else
  echo
  echo "Done installing HomeBrew!"
  echo
fi

# ------------------------------------------------------------------------

echo
echo "INSTALLING FROM BREWFILE"
echo

/opt/homebrew/bin/brew bundle --file=./Brewfile

if [ $? -ne 0 ]; then
  echo
  echo "Failed installing from Brewfile."
  echo

  exit 1
else
  echo
  echo "Done installing from Brewfile!"
  echo
fi

# ------------------------------------------------------------------------

chmod +x setup.sh && ./setup.sh
