const express = require('express')
const app = express()

app.get('/route', (req, res) => res.send('Hello World!'))

app.listen(3000, () => console.log('Example app listening on port 3000!'))

app.post('/route', (req, res) => {
	console.log(req);


	// everything about req
	// req = {
	//  	["ROUTE_START_LATITUDE", "ROUTE_START_LONGITUDE"],
	//.     ["DROPOFF_LATITUDE_#1", "DROPOFF_LONGITUDE_#1"],
	// 		...
	// }

	// ~~~~~~~ code that manipulates db

	// Include the geocoder and inquirer NPM packages
var geocoder = require("geocoder");
var inquirer = require("inquirer");
// Prompt the user to provide location information.
inquirer.prompt([
  [
	["ROUTE_START_LATITUDE", "ROUTE_START_LONGITUDE"],
	["DROPOFF_LATITUDE_#1", "DROPOFF_LONGITUDE_#1"],
	
]
// This stores the users information
]).then(function(location) {
  // console.log(location.userInput);
  // This uses the Google Geocoder to Geocode the address
  geocoder.geocode(location.userInput, function(err, data) {
    console.log(JSON.stringify(data, null, 2));
  });
});
	res.send('This is where you would like to go!')}
)