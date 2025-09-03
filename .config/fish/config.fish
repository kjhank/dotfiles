if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"

source ~/.aliases

alias dotfiles='/usr/bin/git --git-dir=/Users/kjhank/.dotfiles/ --work-tree=/Users/kjhank'

# starship init fish | source



# pnpm
set -gx PNPM_HOME "/Users/kjhank/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
