## NodeMCU rgb led controller with SSDP capability.

# Installation

* Place these files on top of [NodeMCU-httpserver](https://github.com/marcoskirsch/nodemcu-httpserver).
* Add upnp.lua and http/rgb.lua to list of files to compile.
* Add dofile("upnp.lc") after dofile("httpserver.lc")(80).
* Yo should see "OVOI RGB controller" in your upnp browser.
* it is working  at least in windows network browser and upnp-inspector.
