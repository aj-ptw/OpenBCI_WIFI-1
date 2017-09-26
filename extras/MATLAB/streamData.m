import matlab.net.*
import matlab.net.http.*

pcIP = '192.168.0.15';
wifiShieldIP = '192.168.0.210';
urlbase = strcat('http://', wifiShieldIP);
latency = 10000;
delimeter = true;
output = 'json';
port = 3000;

t = tcpip('127.0.0.1', port, 'NetworkRole', 'server');

data = struct('port', port, 'ip', pcIP , 'delimiter', delimeter, 'output', output, 'latency', latency);
options = weboptions('MediaType','application/json');
response = webwrite(strcat(urlbase, '/tcp'), data, options)

r = RequestMessage;
% uri = URI(strcat(urlbase, '/stream/start'));
% resp = send(r,uri);
% status = resp.StatusCode

fopen(t);


