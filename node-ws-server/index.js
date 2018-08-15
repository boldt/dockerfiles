const WebSocket = require('ws');
const fs = require('fs');
const https = require('https');

var server;
var wss;

if (fs.existsSync('/app/cert.pem') && fs.existsSync('/app/key.pem')) {
	server = new https.createServer({
	  cert: fs.readFileSync('/app/cert.pem'),
	  key: fs.readFileSync('/app/key.pem')
	});
	wss = new WebSocket.Server({ server });
} else {
	console.log("Insecure WebSocket server started!");
	wss = new WebSocket.Server({ port: 8080 });
}

wss.on('connection', function connection(ws) {
  ws.on('message', function incoming(data) {
	console.log('Broadcast message',data);
    wss.clients.forEach(function each(client) {
      if (client !== ws && client.readyState === WebSocket.OPEN) {
        client.send(data);
      }
    });
  });
});

if(server) {
  console.log("Secure WebSocket server started!");
  server.listen(8080);
}
