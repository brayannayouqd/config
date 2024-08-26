[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias mtd="yarn dev:app:start"
alias mta="emulator -avd Pixel_7_14 -wipe-data"

alias d='pnpm dev'
alias i='pnpm install'
alias c='clear'
alias lg='lazygit'
alias ls='gls --group-directories-first'
alias ll='gls -lh --group-directories-first'
alias la='gls -lah --group-directories-first'
alias n='nvim .'

alias c_p10k='nvim ~/.p10k.zsh'
alias c_zsh='nvim ~/.zshrc'
alias c_vim='nvim ~/.vimrc'
alias c_nvim='nvim ~/.config/nvim/init.vim'
alias c_tmux='nvim ~/.tmux.conf'
alias c_bash='nvim ~/.bashrc'

alias s_p10k='source ~/.p10k.zsh'
alias s_zsh='source ~/.zshrc'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/bin:$PATH"

[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
export CODEARTIFACT_AUTH_TOKEN=

export PATH="~/Library/Android/sdk/platform-tools:$PATH"

