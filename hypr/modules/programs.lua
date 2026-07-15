return function()
	-- Shared launch commands used by bindings and startup modules.
	ctx.terminal = "kitty"
	ctx.fileManager = "thunar"
	ctx.menu = "sh -c 'command -v wofi >/dev/null 2>&1 || exit 0; pgrep -x wofi >/dev/null 2>&1 && pkill -x wofi || exec wofi --show drun --fork --style /home/tc/.config/wofi/style.css'"
end
