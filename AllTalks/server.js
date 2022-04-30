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
/*importing peer.js */
const { ExpressPeerServer } = require('peer');

const peerServer = ExpressPeerServer(server, {
    debug:true
});

app.use(express.static('public'));
/* the main route is the roomid so when we go the root it will generate the room id and pass it as a parameter */
app.get('/', (req, res) => {
    res.redirect(`/${uuidv4()}`);
  })
/*hey what url are you going to use? */
app.use('/peerjs',peerServer);

app.get('/:room',(req,res)=> {
    res.render('room', { roomId:req.params.room});
})
/*building connection */
io.on('connection', socket => {
    socket.on('join-room' , (roomId, userId) => {
        socket.join(roomId);
        socket.to(roomId).emit('user-connected',userId);
        socket.on('message',message => {
            io.to(roomId).emit('createMessage',message);
        });
        socket.on("disconnect", () => { // When a user disconnects or leaves
            socket.to(roomId).emit("user-disconnected", userId);
        });
        
        socket.on('subsitle',result => {
            io.to(roomId).emit('SubTtile' ,result);
        });
        socket.on("disconnect", () => { // When a user disconnects or leaves
            socket.to(roomId).emit("user-disconnected", id);
        });
        
    });
});

/*for localhost */

server.listen(8080)
