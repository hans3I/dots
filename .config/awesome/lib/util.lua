local wibox = require("wibox")
local gears = require("gears")

local util = {}

util.shape = function(cr, width, height)
	gears.shape.rounded_rect(cr, width, height, 8)
end

util.seperator = wibox.widget.separator {
    orientation = "horizontal",
    forced_height = 2,
	thickness = 2,
    color = "#485263"
}

util.center = function(widget)
	return {
		layout = wibox.layout.align.horizontal,
		expand = "none",
		nil,
		widget,
		nil
	}
end

util.widget_background = function(widget, bg)
	return wibox.container.background(wibox.container.margin({
		layout = wibox.layout.align.horizontal,
		expand = "none",
		nil,
		widget,
		nil,
		forced_width = 30;
	}, 0, 0, 5, 5), bg, util.shape)
end

util.widget_background_horizontal = function(widget, bg)
	return wibox.container.background(wibox.container.margin({
		layout = wibox.layout.align.horizontal,
		expand = "none",
		nil,
		widget,
		nil,
	}, 0, 0, 5, 5), bg, util.shape)
end

util.spacer = wibox.container.margin(nil, 0, 0, 15, 0)

return util
