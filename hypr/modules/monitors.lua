return function()
	hl.monitor({
		output = "",
		mode = "preferred",
		position = "auto",
		-- Native scale keeps this 1920x1080 panel and XWayland applications crisp.
		scale = "1",
	})
end
