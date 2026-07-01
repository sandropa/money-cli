# money

CLI income tracker — logs to `~/money/money.csv`, syncs via private git repo.

## Install
Git clone the repo to `~/.local/src`.

```bash
ln -sf ~/.local/src/money-cli/money ~/.local/bin/money
chmod +x ~/.local/src/money-cli/money
```

For tab completion, add this to `~/.bashrc`:

```bash
source ~/.local/src/money-cli/completions/money.bash
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
money add 150 tutoring-alice 2026-06-15   # add with specific date

money undo          # remove last entry

money list          # last 10 entries, most recent first
money list 25

money sum           # monthly totals by top-level tag, last 12 months
money sum -n 6      # last 6 months
money sum tutoring          # drill into tutoring-* subtags
money sum tutoring -n 3
```

## Sync

```bash
money sync
```
