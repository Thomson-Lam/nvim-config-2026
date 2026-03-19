# Neovim Config 

My Nvim setup.

## 1) Requirements (install these before cloning)

Minimum:

- `neovim` (recommended: `0.10+`)
- `git`
- `curl`
- `make` (used by some plugins for optional native builds)
- `ripgrep` (`rg`, needed for Telescope live grep)
- A C compiler (`gcc` or `clang`, useful for native plugin builds)

Optional but recommended:

- A Nerd Font (for prettier icons in UI)
- Clipboard tool (`xclip` (for Linux X11), `xsel`, or `wl-clipboard`) so `unnamedplus` works smoothly

Example install (Ubuntu/Debian):

```bash
sudo apt update
sudo apt install -y neovim git curl make ripgrep fd-find gcc wl-clipboard
```

## 2) Back up your current Neovim config

If you already use Neovim, back up your existing config first:

```bash
mv ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d-%H%M%S)
```

Optional backup of state/cache directories:

```bash
mv ~/.local/share/nvim ~/.local/share/nvim.backup.$(date +%Y%m%d-%H%M%S)
mv ~/.local/state/nvim ~/.local/state/nvim.backup.$(date +%Y%m%d-%H%M%S)
mv ~/.cache/nvim ~/.cache/nvim.backup.$(date +%Y%m%d-%H%M%S)
```

## 3) Clone this config to the correct Linux path

Neovim loads config from `~/.config/nvim`, so clone this repo there:

```bash
git clone https://github.com/Thomson-Lam/nvim-config-2026.git ~/.config/nvim
```

## 4) Start Neovim and let plugins install

```bash
nvim
```

On first launch, `lazy.nvim` installs plugins automatically. Wait for it to finish.

Useful commands after install:

- `:Lazy` to view plugin status
- `:Mason` to manage/install LSP servers and developer tools
- `:checkhealth` to diagnose missing dependencies

## 5) Notes for beginners

- This setup enables autoformatting and language tooling, but some formatters are external tools (for example `black`, `isort`, `prettierd`, `rustfmt`). Install them per language as needed.
- If icons look broken, install and select a Nerd Font in your terminal.
- If search/grep is slow or unavailable, confirm `rg` is installed: `rg --version`.

## Quick reset (if something breaks)

```bash
rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
nvim
```

This clears plugin/cache data and forces a clean reinstall on next launch.
