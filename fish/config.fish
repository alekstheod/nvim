alias gst='git status'
set PATH $PATH:$HOME/programs
set PATH $PATH:$HOME/.local/share/gem/ruby/3.0.0/bin
set TERM xterm-256color
set EDITOR nvim
starship init fish | source

alias cclip pbcopy
alias pclip pbpaste
alias fkill 'ps -ef | fzf | awk \'{print $2}\' | xargs -I{} kill -9 {}'
eval "$(/opt/homebrew/bin/brew shellenv)"

if test -f /opt/dev/dev.fish
    source /opt/dev/dev.fish
end
set fish_cursor_default block
fish_vi_key_bindings
