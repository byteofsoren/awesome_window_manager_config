-- Power save turn on/off

--xset +dpms
--xset s default

--xset -dpms
--xset s off
power_save = 0

    awful.key({ modkey,  "Control"     }, "F9",
        function ()
        	if power_save == 1 then
			power_save = 0
			awful.util.spawn("xset +dpms s default")
		else
			power_save = 1
			awful.util.spawn("xset -dpms s off")
		end
        end),
