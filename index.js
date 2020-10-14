const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000
const mysql = require('mysql')

app.use(bodyParser.json())
app.use(
    bodyParser.urlencoded({
        extended: true
    })
)
app.use(function (req, res, next){
    res.locals.connection = mysql.createConnection({
        host     : 'localhost',
		user     : 'root',
		password : '',
		database : 'smsdb'
    });
    res.locals.connection.connect();
    next();
})

app.get('/', (req, res) => {
    res.json({
        info: 'app is running well',
        // envtest: dbusername
    })
    // console.log(dbusername)
})

// app.post('/receipt', (req, res) => {
//     console.log(req, res)
// });

app.get('/sms', async(req, res) => {
    var data = {
    "message": "",
    "status": false,
    "data": [],
    "response_code": 200
    }
    let query = `select * from sendedsms`
    if (req.query.id) {
        query += ` where id = ${req.query.id}`
    }
    res.locals.connection.query(query, function (error, results, fields) {
        if (error){
            res.send(data)
        };
        data.message = "OK";
        data.status = true;
        data.data = results;
		res.send(data);
	});
});

app.post('/sms', function(req, res) {
    var data = {
        "message": "",
        "status": false,
        "data": [],
        "response_code": 200
        }
        
        if (req.body) {
            let query =  `INSERT INTO sendedsms (send_from, send_to, mesage_sent, sended_on) 
            VALUES ('${req.body.from}', '${req.body.to}', '${req.body.message}', '${req.body.sended_on}')`

            console.log(query)
            
            res.locals.connection.query(query, function(error, results, fields) {
                if (error) {
                    res.send(data)
                }
                data.message = "OK";
                data.status = true;
                data.data = results;
                res.send(data);
            })
        } else {
            data.message = "Mohon Lengkapi Data"
            res.send(data)
        }
});

app.get('/receipt', async (req, res) => {
    var data = {
        "message": "",
        "status": false,
        "data": [],
        "response_code": 200
        }
    console.log(req.query)
    let saveddlr = JSON.stringify(req.query)
    let query =  `INSERT INTO smsdlr (dlr) 
            VALUES ('${saveddlr}')`
            res.locals.connection.query(query, function(error, results, fields){
                if(error){
                    res.send(data)
                }
                data.message = "OK";
                data.status = true;
                res.send(data);
            })
});

// function handleParams(params, res) {
//     if (params.status !== 'delivered') {
//         console.log('Fail: ' + params.status);
//     } else { // Success!
//         console.log(params);
//     }
//     res.status(200).end();
// }


app.listen(port, () => {
    console.log(`Your app is running on port ${port}`)
})