adventurer = {
	warrior: {
		job: "Warrior",
		primary_attribute: "strength",
		equipment: [
			"sword",
			"shield",
			"heavy armor"
		]
	},
	mage: {
		job: "Mage",
		primary_attribute: "intelligence",
		equipment: [
			"staff",
			"grimoires",
			"robes",
		]
	},
	thief: {
		job: "Thief",
		primary_attribute: "dexterity",
		equipment:[
			"daggers",
			"bow",
			"leather armor"
		]
	},
	priest:{
		job: "Priest",
		primary_attribute: "faith",
		equipment:[
			"staff",
			"talisman",
			]
	}

}

puts adventurer[:warrior][:equipment][1]
adventurer[:warrior][:equipment][1] = "great shield"
puts adventurer[:warrior][:equipment][1]

adventurer[:priest][:equipment].push("holy robes")
puts adventurer[:priest][:equipment]

puts adventurer[:thief][:primary_attribute]

puts adventurer[:mage][:job]



