var colors = ["blue", "pink", "green", "red"];
var names = ["charlie", "tom", "greg", "maine"]; 

colors.push("grey")
names.push("hairy")

for (var i = 0; i < colors.length; i++) {
	var horses = {names: names[i], colors: colors[i]}
	console.log(horses);
}

function Cars(color, miles, num_seats) {
	this.color = color;
	this.miles = miles;
	this.num_seats = num_seats;

	this.honk = function() {
		console.log("Beep!");
	};
	console.log("CARS INITIALIZATION COMPLETE");
}

var another_car = new Cars("blue", 20000, 4)
console.log(another_car);
another_car.honk();

var race_car = new Cars("red", 1000, 2)
console.log(race_car);
race_car.honk();

var fancy_car = new Cars("black", 0, 5)
console.log(fancy_car);
fancy_car.honk();