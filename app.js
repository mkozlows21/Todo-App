var express = require('express');
var sql = require('mysql');
var app = express();

app.set("view engine", "ejs");
app.use(express.static("public"));

app.get('/', function(req, res) {
    // Connecting to SQL Database
    // var connection = sql.createConnection({
    //   host: "localhost",
    //   user: "root",
    //   database: "todo_app"
    // });
    
    // connection.connect();
    
    // connection.query("SELECT * FROM lists", function(err, result, fields){
    //   if (err) console.log(err);
    //   console.log("Result: " + result[0].name);
    // });
    
   res.render("index"); 
});

app.listen(process.env.PORT, process.env.IP, function(){
    console.log("SERVER STARTED");
});