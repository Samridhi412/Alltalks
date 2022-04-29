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
