#
# ~/.bash_profile
#

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/scripts"
export PATH="$PATH:$HOME/.dotnet/tools"

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export ASPIRE_CLI_TELEMETRY_OPTOUT=1

[[ -f ~/.bashrc ]] && . ~/.bashrc
