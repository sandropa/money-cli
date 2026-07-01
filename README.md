# money

CLI income tracker — logs to `~/money/money.csv`, syncs via private git repo.

## Install
Git clone the repo to `~/.local/src`.

```bash
ln -sf ~/.local/src/money-cli/money ~/.local/bin/money
chmod +x ~/.local/src/money-cli/money
```

Then set up the data repo:

```bash
mkdir -p ~/money && cd ~/money && git init
git remote add origin git@github.com:YOUR_USERNAME/money-data.git
```

## Usage

```bash
money add 150 tutoring-alice
money add 2000 freelance-project
cat ~/money/money.csv
```

## Sync

```bash
money sync
```
