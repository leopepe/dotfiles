# exports, functions and aliases
for file in ~/.config/fish/.{functions*,exports*,aliases*}
  if test -r $file
    source "$file"
  end
end

# starship
starship init fish | source

# python
pyenv init - fish | source


# pnpm
set -gx PNPM_HOME "/Users/leonardo.pepe/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Homebew completions
if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end
if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/leonardo.pepe/.lmstudio/bin
# End of LM Studio CLI section

# vi mode
set -g fish_key_bindings fish_vi_key_bindings
