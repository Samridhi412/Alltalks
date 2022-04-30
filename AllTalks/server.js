/*initialise our express project*/
const express = require('express');
/*this is how we initialise our express application*/
const app = express();
/*Server*/
const server = require('http').Server(app);

/*importing uuid into this server.js */
const {v4: uuidv4 } = require('uuid');
app.set('view engine','ejs');
/*initialise our express project*/
const express = require('express');
/*this is how we initialise our express application*/
const app = express();
/*Server*/
const server = require('http').Server(app);
/* importing socket.io */
const io = require('socket.io')(server)
/*importing uuid into this server.js */
const {v4: uuidv4 } = require('uuid');
app.set('view engine','ejs');




app.use(express.static('public'));
/* the main route is the roomid so when we go the root it will generate the room id and pass it as a parameter */
app.get('/', (req, res) => {
    res.redirect(`/${uuidv4()}`);
  })


/*for localhost */

server.listen(8080)
