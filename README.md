# Main Installation

```sh
sudo apt install stow git
```

From your home directory, clone this repository:

```sh
cd ~ && git clone git@github.com:vtjeng/dotfiles.git
```

> :warning: It's important to do this from your home directory as `stow` works with relative paths.

Now, navigate to the newly created `dotfiles` directory. For each group of dotfiles associated with a tool you'd like to install, run `stow <tool-folder>`.

## Manual Post-Install Steps

### `neovim`

We've set the default editor to neovim. Install it [here](https://github.com/neovim/neovim/wiki/Installing-Neovim).

### `fzf`

After running `stow fzf`:

```sh
~/.fzf/install
```

### `zsh`

- Install `zsh`.
- Make `zsh` your default shell: `chsh -s $(which zsh)` (you are also prompted to do this when [installing `oh-my-zsh`](https://ohmyz.sh/))

After running `stow zsh`, our `~/.zshrc` currently specifies the following additional plugins and themes. You will need to install these separately.

- [`zsh-autosuggestions` plugin](https://github.com/zsh-users/zsh-autosuggestions)
- [`powerlevel10k/powerlevel10k` theme](https://github.com/romkatv/powerlevel10k)

#### `powerlevel10k`

`powerlevel10k` uses fonts with special glyphs; you can [install them with these instructions](https://github.com/romkatv/powerlevel10k#fonts) or use your choice of [NerdFonts](https://www.nerdfonts.com/)

### Recommended utilities

- [`ripgrep`](https://github.com/BurntSushi/ripgrep): a line-oriented search tool that recursively searches your current directory for a regex pattern
- [`tig`](https://jonas.github.io/tig/): an ncurses-based text-mode interface for git
- [`colordiff`](https://www.colordiff.org/): a wrapper for 'diff' that produces the same output but with pretty 'syntax' highlighting
- [`ncdu`](https://dev.yorhel.nl/ncdu): a disk usage analyzer with an ncurses interface
- [`shellcheck`](https://github.com/koalaman/shellcheck): a tool that gives warnings and suggestions for bash/sh shell scripts
- [`fd`](https://github.com/sharkdp/fd): a simple, fast and user-friendly alternative to find

## OS-specific instructions

### [WSL2 for Windows](https://docs.microsoft.com/en-us/windows/wsl/wsl2-index)

_Last Updated_: 2020-06-20

- Use [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701#activetab=pivot:overviewtab)
- Customize the [color scheme](https://docs.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes)
- [Set the starting directory](https://github.com/microsoft/terminal/issues/2743) to your Ubuntu home directory for your Ubuntu profile.
- [Set the default profile](https://github.com/microsoft/terminal/issues/1466) to your Ubuntu installation.
- [Set Cascadia Code PL as fontFace in settings](https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup#set-cascadia-code-pl-as-fontface-in-settings): This is one option for the fonts that `powerlevel10k` requires.

See the example [settings.json](./misc/windows-terminal/settings.json) file checked in to this repo.
