minetest.register_on_joinplayer(function(player)
	minetest.after(0, player.hud_set_hotbar_itemcount, player, 16)
	minetest.after(0, player.hud_set_hotbar_image, player, "gui_hotbar_16.png")
end)

if minetest.get_modpath("beds") ~= nil then 
  minetest.unregister_item("beds:fancy_bed") 
  minetest.clear_craft({ output = "beds:bed_bottom" })
  minetest.register_craft({
  	output = "beds:bed",
  	recipe = {
  		{"wool:green", "wool:green", "wool:white"},
  		{"group:wood", "group:wood", "group:wood"},
    },
  })
end

if minetest.get_modpath("herbs") ~= nil then minetest.unregister_item("herbs:cactus_tincture") end

if minetest.get_modpath("anvil") ~= nil then 
  minetest.clear_craft({ output = "anvil:anvil" })
  minetest.register_craft({
  	output = "anvil:anvil",
  	recipe = {
      {"default:steelblock","default:steelblock","default:steelblock"},
      {'',                   "default:steel_ingot",''                   },
      {"default:steel_ingot","default:steel_ingot","default:steel_ingot"} },
  })
end
