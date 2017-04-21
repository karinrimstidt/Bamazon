var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
	host: "localhost",
		port: 9080,
		user: "root",
		password: "",
		database: "Bamazon"
	});
	
	connection.connect(function(err){
		if(err) throw err;
	});


// -----------function starts here--------------------------


function everything(){
	connection.query("SELECT * FROM products", function(err,res){
		if (err) throw err;
		for (var i = 0; i < res.length; i++){
			console.log("ID" + res[i].item_id + " *** Product" + res[i].product_name + " *** Department" + res[i].department_name + " *** Price" + res[i].price + " *** In Stock" + res[i].stock_quantity);
		}
	
	inquirer.prompt([{
		name: "item_id",
		type: "input",
		message: "Please enter the item id number for the item you want to purchase."
	},
	{
		name: "quantity",
		type: "input",
		message: "Please enter the quanity you wish to purchase."
	}]).then (function(answer){
		
		connection.query("SELECT product_name FROM products WHERE ?", {item_id: answer.item.id},
			function(err,res){
				if (err) throw err;
					console.log("You would like to purchase " + answer.quantity + " " + res[0].product_name + ".");

				connection.query("SELECT product_name FROM products WHERE ?"), {item_id: answer.item_id}, function(err, res){
					if (err) throw err;
					var amount = parseInt(res[0].stock_quantity) - parseInt(answer.quantity);

						if (parseInt(amount) >= 0){
							connection.query("UPDATE products SET stock_quantity = ? WHERE ?", 
								[parseInt(amount), {item_id: answer.item_id}])
						} else {
							console.log("We do not have that quantity in stock.");
						}
					}
				})
			})
		})
};