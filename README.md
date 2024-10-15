# dotfiles
Various useful configuration files for commonly used terminal tools. These assume that a suitable [nerd font](https://www.nerdfonts.com) has been installed to make everything look nice.

## Tmux

This config file is set up to use the [tmux package manager (TPM)](https://github.com/tmux-plugins/tpm), along with [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) for sane defaults. The color scheme being used is [catppuccin](https://github.com/catppuccin/tmux).

The options being set are

* `base-index 1`: This makes the window numbering start at 1 instead of 0.
* `@catppuccin_status_modules "user date_time"`: This configures catppuccin to only show the username and current time in the status bar
* `@catppuccin_window_current_text` and `@catppuccin_window_default_text` are set to `#{window_name}` to allow windows to be named according to what you're using them for instead of the current directory.

This config file is set up to bootstrap itself if TPM is not already installed. This tries to be somewhat OS-aware by checking if `$XDG_DATA_HOME` is set, and if so it will install TPM to that location. Otherwise, it defaults to `$HOME/.local/share/tmux/plugins`.

## Neovim

This is the config file for [neovim](https://github.com/neovim/neovim), using [lazy](https://github.com/folke/lazy.nvim) as the package manager. As with tmux above, this is set up to bootstrap itself if it is not already installed. This uses neovim's built in handling of the data directory (`vim.fn.stdpath("data")`), so the install location of `lazy` itself, as well as any plugins installed using it, is set by that option. As with tmux, the color scheme is [catppuccin](https://github.com/catppuccin/nvim).

Note that you need to tell `Lazy` to install plugins yourself - it won't do it automatically. The plugin manager can be brought up using the command `:Lazy`, and then `I` (`shift + i`) to install or `U` (`shift + u`) to update plugins.

Relevant options being set are
* `vim.opt.number = true`: enables line numbering
* `vim.opt.tabstop=4`, `vim.opt.shiftwidth=4`, `vim.opt.expandtab=false`: These are to tell neovim to use hard tabs by default (because that is correct :) )

The plugins being loaded are all set in the `lua/plugins` directory:
* `catppuccin.lua`: The [catppuccin](https://github.com/catppuccin/nvim) theme.
* `nvim-tree.lua`: The [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) tree viewer.
* `vimtex.lua`: The [vimtex](https://github.com/lervag/vimtex) filetype plugin, which provides useful functionality for writing LaTeX files.
* `barbar.lua`: [Barbar](https://github.com/romgrk/barbar.nvim) for a buffer line.
* `lualine.lua`: [Lualine](https://github.com/nvim-lualine/lualine.nvim) for the status line.
* `julia.lua`: [Syntax highlighting](https://github.com/JuliaEditorSupport/julia-vim) for the [Julia](https://julialang.org) language.

## Updates
This README will be updated as things are added or edited
