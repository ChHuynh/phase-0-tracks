// make function with variable for word that will be reversed (in this case will use whales)
// create a loop that uses the length of the word for a counter
// use length of word for getting the index of the word, and add it to a new string to be returned
// once function has gone through all the letters in the word, return the newly reversed word
// add a conditional to run the code, and print it.

function reverse(word) {
var change = '';
for (var i = word.length - 1; i >= 0; i--)
	change += word[i];
return change;
}

var hasnocluewhatiamdoing = true
if (hasnocluewhatiamdoing) {
	console.log(reverse('whales'));
}
