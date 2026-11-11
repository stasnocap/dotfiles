#!/bin/bash
in=$(cat)
model=$(jq -r '.model.display_name // "?"' <<<"$in")
h5=$(jq -r '.rate_limits.five_hour.used_percentage // empty' <<<"$in")
d7=$(jq -r '.rate_limits.seven_day.used_percentage // empty' <<<"$in")
dir=$(jq -r '.workspace.current_dir // .cwd // ""' <<<"$in")
br=$(git -C "$dir" branch --show-current 2>/dev/null)
out="$model"
[ -n "$h5" ] && out+=" | 5h: $(printf '%.0f' "$h5")%"
[ -n "$d7" ] && out+=" | 7d: $(printf '%.0f' "$d7")%"
[ -n "$br" ] && out+=" | $br"
echo "$out"
