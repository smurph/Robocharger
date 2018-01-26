data:extend({
{
	type = "technology",
	name = "robocharger",
	icon = "__Robocharger__/graphics/icons/robot-charge-port.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "robocharger"
		}
	},
	prerequisites = {"construction-robotics"},
	unit = {
		count = 120,
		ingredients = {
			{"science-pack-1", 1},
			{"science-pack-2", 1}
		},
		time = 30
	},
	order = "c-a"
}
})