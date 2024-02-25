export FLUTTER_ROOT="$HOME/flutter"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/flutter/bin:$HOME/Library/Android/sdk/cmdline-tools/latest/bin:$HOME/java/Contents/Home/bin"
export PATH="$PATH":"$HOME/flutter/.pub-cache/bin:$HOME/@/bin:$HOME/.local/bin"
echo -n "\033]0;${USER}@${HOST}\007"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# Generated for envman. Do not edit.
#[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
source $HOME/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
export CLICOLOR=1
# now load zsh-syntax-highlighting plugin
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
