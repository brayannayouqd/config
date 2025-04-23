[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias i='ni install'
alias c='clear'
alias v='nvim .'
alias lg='lazygit'

alias z='nvim ~/.zshrc'
alias zz='source ~/.zshrc'

alias c_vim='nvim ~/.vimrc'
alias c_nvim='nvim ~/.config/nvim/init.vim'
alias c_tmux='nvim ~/.tmux.conf'
alias c_bash='nvim ~/.bashrc'

alias ls='gls --group-directories-first'
alias ll='gls -lh --group-directories-first'
alias la='gls -lah --group-directories-first'

function d() {
  current_dir="$(pwd)"
  code_directory="${HOME}/Code"
  work_dir="${code_directory}/context"

  # projects
  project_1="${work_dir}/project_1"
  project_2="${work_dir}/project_2"

  if [[ $current_dir == $project_1 ]]; then
    yarn dev
    return 0
  fi

  if [[ $current_dir == $project_2 ]]; then
    yarn start
    return 0
  fi

  yarn dev
}

export PATH="/opt/homebrew/bin:$PATH"

[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

. "$HOME/.atuin/bin/env"

# eval "$(atuin init zsh)"

export PATH="~/Library/Android/sdk/platform-tools:$PATH"

export STARSHIP_CONFIG=~/config/starship-config/starship.toml

eval "$(starship init zsh)"
