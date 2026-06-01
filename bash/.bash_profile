#
# ~/.bash_profile
#
export GOPATH="$HOME/go"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/scripts"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$GOPATH/bin"


export DOTNET_CLI_TELEMETRY_OPTOUT=1
export ASPIRE_CLI_TELEMETRY_OPTOUT=1

[[ -f ~/.bashrc ]] && . ~/.bashrc
