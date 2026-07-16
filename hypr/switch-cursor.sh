#!/usr/bin/env sh
# Switch the persistent XCursor theme and update the running Hyprland session.

set -eu

config="$HOME/.config/hypr/modules/environment.lua"
size=24

case "${1:-}" in
  banana) theme="Banana" ;;
  ice)    theme="Bibata-Modern-Ice" ;;
  status)
    sed -n 's/.*XCURSOR_THEME", "\([^"]*\)".*/\1/p' "$config"
    exit 0
    ;;
  *)
    echo "Usage: ${0##*/} {banana|ice|status}" >&2
    exit 2
    ;;
esac

sed -i "s|hl.env(\"XCURSOR_THEME\", \"[^\"]*\")|hl.env(\"XCURSOR_THEME\", \"$theme\")|" "$config"
hyprctl setcursor "$theme" "$size"
hyprctl dispatch 'hl.dsp.exit()'
printf 'Cursor theme set to %s (%spx).\n' "$theme" "$size"
