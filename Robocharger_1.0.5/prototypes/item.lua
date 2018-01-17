
data:extend({  
	{
		type = "item",
		name = "robocharger",
		icon = "__Robocharger__/graphics/icons/robot-charge-port.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "logistic-network",
		order = "c[signal]-a[roboport]-a",
		place_result = "robocharger",
		stack_size = 10
	}
})