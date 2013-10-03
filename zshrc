# zsh setup
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# include boxen environment
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# set the default user, to clean up the prompt
DEFAULT_USER=haelmy

# set directory colors to match solarized
LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# start tmux with utf-8 support, so it does not mess with the zsh theme
alias tmux='tmux -u'

# enable globally installed npm packages
export PATH=/usr/local/share/npm/bin:$PATH

# patch the agnoster prompt
directory_name() {
  if [[ -d $(git rev-parse --show-toplevel 2>/dev/null) ]]; then
    # in a git repository
    git_root=$(git rev-parse --show-toplevel)
    physical_pwd=$(pwd -P)
    path_in_git="${physical_pwd#$git_root}"
    base=$(basename $git_root)

    echo -n $base
    echo -n $path_in_git
  else
    echo '%~'
  fi
}

prompt_dir() {
  prompt_segment blue black $(directory_name)
}