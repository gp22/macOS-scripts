# MacOS Post Installation Setup and Config Scripts

## Installation

Clone this repo

```bash
git clone https://github.com/gp22/macOS-scripts.git ~/macOS-scripts
```

Copy Brewfile to the macOS scripts directory

```bash
cp /path/to/brewfile ~/macOS-scripts
```

cd into `~/macOS-scripts` and run `./install.sh`

```bash
cd ~/macOS-scripts && chmod +x install.sh && ./install.sh
```

Run a few commands to test Brew

```bash
/opt/homebrew/bin/brew doctor
```

```bash
/opt/homebrew/bin/brew update
```

```bash
/opt/homebrew/bin/brew upgrade
```

## Maintenance

```bash
./terminal-maintenance
```

```bash
./terminal-search
```

```bash
./terminal-updates
```
