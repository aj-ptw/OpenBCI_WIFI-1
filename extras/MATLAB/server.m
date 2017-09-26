import matlab.net.*
import matlab.net.http.*

pcIP = '127.0.0.1';
wifiShieldIP = '192.168.0.210';
urlbase = strcat('http://', wifiShieldIP);
port = 3001;

t = tcpip(pcIP, port, 'NetworkRole', 'server');

disp('waiting for connection')
fopen(t);

disp('connected!')
r = RequestMessage;
uri = URI(strcat(urlbase, '/stream/start'));
resp = send(r,uri);
status = resp.StatusCode