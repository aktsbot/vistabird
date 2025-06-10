conky.config = {
	use_xft = true,
	xftalpha = 1,
	update_interval = 5,
	total_run_times = 0,
	own_window = true,
	own_window_transparent = true,
	own_window_argb_visual = true,
	--own_window_argb_value = 1000,
	own_window_argb_value = 12,
	own_window_colour = '000000',
	own_window_type = "normal",
	own_window_class = "Conky",
	own_window_hints = "undecorated,sticky,skip_taskbar,skip_pager,below",
	background = false,
	double_buffer = true,
	imlib_cache_size = 0,
	no_buffers = true,
	uppercase = false,
	cpu_avg_samples = 2,
	override_utf8_locale = true,
	minimum_width = 150,
	maximum_width = 150,
	short_units = false,

	border_inner_margin = 10,
	
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

	-- placement
	alignment = "bottom_right",
	gap_x = 15,
	gap_y = 40,

	-- default drawing
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = true,
	default_bar_width = 150,
	default_bar_height = 5,
	default_graph_width = 150,
	default_graph_height = 16,
	default_gauge_width = 20,
	default_gauge_height = 20,

	-- colors
	font = "Terminus:size=9",
	default_color = "DDDDDD",
	default_shade_color = "263238",
	default_outline_color = "263238",

	-- color1 = "cyan",
	-- color4 = "1793D0",
	
	lua_load = '~/.config/conky/vistabird/conky_grey.lua',
	-- lua_draw_hook_post = 'main',
	lua_draw_hook_pre = 'draw_bg'
}


conky.text = [[
cpu: $alignr${hwmon 2 temp 1}°C $cpu%
mem:$alignr${execp free -h | awk '/^Mem/ {print $3}'}B/$memmax
swap: $alignr$swap/$swapmax

efi: $alignr${fs_used /boot/efi}/${fs_size /boot/efi}
home: $alignr${fs_used /home}/${fs_size /home}
root: $alignr${fs_used /}/${fs_size /}

batt: ${battery_percent BAT1}% $alignr ac:${color} $acpiacadapter
]]
