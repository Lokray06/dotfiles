if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH tweaks
fish_add_path /home/juanpa/.spicetify
fish_add_path /home/juanpa/.local/bin
fish_add_path /home/juanpa/Apps/bin
fish_add_path /home/juanpa/.spicetify

# Load aliases
source ~/.config/fish/aliases.fish

# Init Oh My Posh prompt
oh-my-posh init fish --config ~/.config/oh-my-posh/custom.json | source

# Better Ctrl+R using fzf
bind \cr "
  history | fzf --height=40% --reverse --border | read -l cmd
  if test -n \"\$cmd\"
    commandline -r \$cmd
  end
"
set -U fish_history_merge true

# Ctrl+Backspace → delete previous word
bind \b backward-kill-word

# Ctrl+Delete → delete next word
bind \e\[3\;5~ kill-word
