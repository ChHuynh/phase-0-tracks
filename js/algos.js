// create a function to figure out the longest word or phrase
// need to have a loop that iterates through each element in an array, and checks their length
// make a conditional statement that holds the index spot of the biggest length.
// return the biggest value element in the array

function Big(arr) {
	var length_check = ' ';
	for (var counter = 0; counter < arr.length; counter++)
		if (arr[counter].length > length_check.length){
			length_check = arr[counter]
		}
		console.log("the biggest word is " + length_check + ".");
}


//taking two objects and comparing key-value pairs
// iterate through each key-value pair and check to see if there are matches, if there is, returns true

function Match(object_1, object_2) {
 for (var property in object_1) {
 	if (object_1[property] === object_2[property]) {
      return true;
    }
  }
  return false;
}



// function with arugment being number
// using random number between 1-10, decides the length of word, then picks random letters from alphabet to create string
// put random word into an array
// repeat process number of times specified in the argument of function.

function Rando(num) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz"
	var random_array = []
	
	for (counter = 0; counter < num; counter++) { //for looping number of times  in argument
	
	var random_length = Math.floor(Math.random() * 10) + 1 //choosing the length of the word, between 1-10
		var randomized_word = ""
		for (length_count = 0; length_count < random_length; length_count++) { //loop to generate a random letter random 1-10 number of times
	
			randomized_word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
			}
		random_array.push(randomized_word)
}
console.log("here are the randomly generated words.")
console.log(random_array)
Big(random_array)
	
} // function end


//use rando function 10 times with 10 words

function Whee(num) {
for (i = 0; i < num; i++) {
	Rando(5)
}
} //function end




//testing code below

var words = ["big", "bigger", "hi"];
Big(words); //bigger should return

var test = {name:"bob", age:"22", favorite_color:"white"};
var test_2 = {name:"kelly", age:"30", favorite_color:"white"};
var test_3 = {nickname:"kelly", name: "ken", age:"30", favorite_color:"blue"};
console.log(Match(test, test_2));  // should return true
console.log(Match(test, test_3)); // should return false
console.log(Match(test_2, test_3)); //should return true


Rando(5);

console.log("___________")
Whee(10)