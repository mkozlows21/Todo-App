var express = require('express');
var sql = require('mysql');
var app = express();

app.set("view engine", "ejs");
app.use(express.static("public"));

app.get('/', function(req, res) {
    // Connecting to SQL Database
    var connection = sql.createConnection({
      host: "localhost",
      user: "root",
      password: "password",
      database: "todo_app"
    });
    
    connection.connect();

    connection.query("SELECT * FROM task", function(err, result, fields){
      if (err) console.log(err);
      res.render("index", {result: result}); 
    });

    // res.render("index", {query: query}); 
});

app.listen(process.env.PORT || 3000, process.env.IP, function(){
    console.log("SERVER STARTED");
});