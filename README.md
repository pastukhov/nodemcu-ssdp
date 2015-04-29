# nodemcu-ssdp
A SSDP daemon for NodeMCU

# Installation

* Place these files on top of [NodeMCU-httpserver](https://github.com/marcoskirsch/nodemcu-httpserver).
* Add upnp.lua and http/rgb.lua to list of files to compile.
* Add dofile("upnp.lc") after dofile("httpserver.lc")(80)
