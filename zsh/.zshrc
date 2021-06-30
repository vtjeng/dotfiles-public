[ -f $HOME/.secrets ] && source $HOME/.secrets

export PATH=${HOME}/.local/bin:${HOME}/bin:/usr/local/bin:${PATH}

## we use the `powerlevel10k` theme from https://github.com/romkatv/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

## zsh settings
# https://stackoverflow.com/questions/30940299/zsh-repeats-command-in-output
DISABLE_AUTO_TITLE="true"

## powerlevel10k specific settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status root_indicator background_jobs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='$ '

POWERLEVEL9K_SHORTEN_STRATEGY='truncate_to_first_and_last'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

POWERLEVEL9K_VIRTUALENV_BACKGROUND='grey85'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='grey85'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=2

## zsh plugins
plugins=(zsh-autosuggestions)

## History settings
# A basic set is already provided via oh-my-zsh. See https://github.com/ohmyzsh/ohmyzsh/blob/28ed2880c766eb5a360354fb71d597dbc07abaa0/lib/history.zsh
# Note on history settings: https://askubuntu.com/questions/23630/how-do-you-share-history-between-terminals-in-zsh

## oh-my-zsh
# Path to your oh-my-zsh installation.
export ZSH="/home/vtjeng/.oh-my-zsh"
# Note that we must source oh-my-zsh _after_ (at least) the theme and plugins is specified.
source "${ZSH}/oh-my-zsh.sh"

## Preferred editor for local and remote sessions
if [[ -n "${SSH_CONNECTION}" ]]; then
  export VISUAL="nvim"
else
  export VISUAL="nvim"
fi
# https://unix.stackexchange.com/questions/4859/visual-vs-editor-what-s-the-difference
export EDITOR="${VISUAL}"

## Miscellaneous aliases
# https://unix.stackexchange.com/questions/141367/have-xargs-use-alias-instead-of-binary/244516#244516
alias xargs="xargs "

# fd-find
alias fd='fdfind'

## fzf: https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# use `fd` for faster searching: https://medium.com/better-programming/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d
export FZF_DEFAULT_COMMAND="fdfind --color=always"
export FZF_DEFAULT_OPTS="--ansi"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

## tmux
# support 256 colors: https://unix.stackexchange.com/questions/139082/zsh-set-term-screen-256color-in-tmux-but-xterm-256color-without-tmux
[[ -n ${TMUX} ]] && export TERM="screen-256color"

