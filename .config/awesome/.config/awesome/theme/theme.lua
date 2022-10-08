-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- local themes_path = require("gears.filesystem").get_themes_dir()
local dpi = require("beautiful.xresources").apply_dpi
local gears = require("gears")

-- {{{ Main
local theme = {}
local themes_path = os.getenv("HOME") .. "/.config/awesome/theme"
theme.wallpaper = themes_path .. "/wallpaper/wallp.jpg"
-- }}}

-- {{{ Styles
theme.font_name    = "Fantasque Sans Mono"
theme.font         = theme.font_name .. " 12"
theme.taglist_font = theme.font_name .. " 12"

-- {{{ Colors
theme.fg_normal  = "#c0caf5"
theme.fg_focus   = "#292e42"
theme.fg_urgent  = "#bb9af7"
theme.bg_normal  = "#1a1b26"
theme.bg_focus   = "#292e42"
theme.bg_urgent  = "#1a1b26"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(5)
theme.border_width  = dpi(0)
theme.border_normal = theme.fg_focus
theme.border_focus  = "#00000000"
theme.border_marked = theme.fg_urgent
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_fg_normal = theme.bg_focus
theme.titlebar_fg_focus = theme.fg_normal
-- }}}

-- Taglist
theme.taglist_bg_focus    = theme.bg_focus
theme.taglist_fg_empty    = theme.fg_focus
theme.taglist_fg_occupied = theme.fg_normal
theme.taglist_fg_focus    = theme.fg_normal

-- Tasklist
theme.taglist_bg_occupied = theme.bg_normal
theme.tasklist_fg_focus   = theme.fg_normal
theme.tasklist_bg_focus   = "#00000000"

-- Menubar
theme.menubar_bg_normal = theme.bg_normal
theme.menubar_border_width = 3
theme.menubar_border_color = theme.bg_normal
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes_path .. "zenburn/taglist/squarefz.png"
theme.taglist_squares_unsel = themes_path .. "zenburn/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = themes_path .. "zenburn/awesome-icon.png"
theme.menu_submenu_icon      = themes_path .. "default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = gears.color.recolor_image(themes_path .. "/icons/dashboard.svg",       theme.fg_normal)
theme.layout_floating   = gears.color.recolor_image(themes_path .. "/icons/floating.svg",   theme.fg_normal)
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = gears.color.recolor_image(themes_path .. "/icons/close.svg", theme.fg_normal)
theme.titlebar_close_button_normal = gears.color.recolor_image(themes_path .. "/icons/close.svg", theme.bg_focus)

theme.titlebar_minimize_button_focus  = gears.color.recolor_image(themes_path .. "/icons/remove.svg", theme.fg_normal)
theme.titlebar_minimize_button_normal = gears.color.recolor_image(themes_path .. "/icons/remove.svg", theme.bg_focus)
-- }}}
-- }}}

-- systray
theme.systray_icon_spacing = dpi(12)
theme.systray_max_rows = 7

-- flash_focus
theme.flash_focus_start_opacity = 0.6 -- the starting opacity
theme.flash_focus_step = 0.01         -- the step of animation

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
