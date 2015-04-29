return function (connection, args)
local chipid = node.chipid()
if node.heap() > 8000 then
    connection:send("HTTP/1.0 200 OK\r\nContent-Type: text/xml\r\n\r\n")
    connection:send("<?xml version='1.0'?>\r\n")
    connection:send("<root xmlns='urn:schemas-upnp-org:device-1-0'>\r\n")
    connection:send("<device>\r\n")
    connection:send("<deviceType>urn:schemas-upnp-org:device:DimmableLight:1</deviceType>\r\n")
    connection:send("<presentationURL>/</presentationURL>\r\n")
    connection:send("<friendlyName>Ovoi RGB controller</friendlyName>\r\n")
    connection:send("<manufacturer>ovoi.ru</manufacturer>\r\n")
    connection:send("<manufacturerURL>http://ovoi.ru/</manufacturerURL>\r\n")
    connection:send("<serialNumber>"..chipid.."</serialNumber>\r\n")
    connection:send("<UDN>uuid:c5baf4a1-0c8e-44da-9714-ef"..chipid.."</UDN>\r\n")
    connection:send("</device></root>\r\n")
    print("XML Sent")
else 
    connection:send("HTTP/1.0 503 Service Temporarily Unavailable\r\n")
    connection:send("Retry-After: 5\r\n\r\n")
    print("503 sent")
end

end
