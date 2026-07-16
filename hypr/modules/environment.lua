return function()
    hl.env("XMODIFIERS", "@im=fcitx")
    hl.env("QT_IM_MODULE", "fcitx")
    hl.env("QT_IM_MODULES", "wayland;fcitx")

    -- Bibata Modern Ice is an XCursor theme. Leave HYPRCURSOR_THEME unset so
    -- Hyprland falls back to this theme when no Hyprcursor theme is installed.
    hl.env("XCURSOR_THEME", "Banana")
    hl.env("XCURSOR_SIZE", "24")
end
