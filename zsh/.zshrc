zap_file="${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

if [[ -r "$zap_file" ]]; then
  source "$zap_file"

  plug "zsh-users/zsh-autosuggestions"
  plug "zap-zsh/supercharge"
  plug "woefe/git-prompt.zsh"
fi

unset zap_file

# ls colors

export CLICOLOR=1
export LSCOLORS="cxfxdxdxbxexexbxbxcxcx"

# git prompt

ZSH_GIT_PROMPT_SHOW_TRACKING_COUNTS=1
ZSH_GIT_PROMPT_SHOW_LOCAL_COUNTS=0
ZSH_GIT_PROMPT_FORCE_BLANK=1

ZSH_THEME_GIT_PROMPT_PREFIX=' %F{#ffffff}on%f '
ZSH_THEME_GIT_PROMPT_SUFFIX=''
ZSH_THEME_GIT_PROMPT_SEPARATOR=''

ZSH_THEME_GIT_PROMPT_BRANCH='%F{#44bc44}'
ZSH_THEME_GIT_PROMPT_DETACHED='%F{#44bc44}'

ZSH_THEME_GIT_PROMPT_AHEAD=' %F{#79a8ff}↑'
ZSH_THEME_GIT_PROMPT_BEHIND=' %F{#d0bc00}↓'

ZSH_THEME_GIT_PROMPT_UNMERGED=' %F{#ff5f59}!'
ZSH_THEME_GIT_PROMPT_STAGED=' %F{#d0bc00}+'
ZSH_THEME_GIT_PROMPT_UNSTAGED=' %F{#ff5f59}*'
ZSH_THEME_GIT_PROMPT_UNTRACKED=' %F{#79a8ff}?'
ZSH_THEME_GIT_PROMPT_CLEAN=''

if (( ! $+functions[gitprompt] )); then
  gitprompt() {}
fi

PROMPT='%F{#ffffff}at%f %F{#2fafff}%~%f$(gitprompt)
%(?.%F{#44bc44}.%F{#ff5f59})❯%f '

# keep at bottom - syntax highlighting

if (( $+functions[plug] )); then
  plug "zsh-users/zsh-syntax-highlighting"
fi
