minetest.register_on_joinplayer(function(player)
	minetest.after(0, player.hud_set_hotbar_itemcount, player, 16)
	minetest.after(0, player.hud_set_hotbar_image, player, "gui_hotbar_16.png")
end)
