docker-deluge
======

A basic Dockerised Deluge install. 

Designed to launch a hands-free and minimal Docker install that
* enables the Deluge remote admin UI
* watches for new torrents and auto-adds them
* moves completed torrents 

That's it. Support for RSS might be added, but I don't intend on going to the point of enabling the web UI or similar. 

Starting a container
------
`make` will build and start a container running deluge.

Move torrents to `torrents/` to have the daemon automatically pick them up. 

Configuration 
------

Edit `deluge_config/auth` to change the username and password from `"my_user"` to something you'll use to log into the admin interface. 

To add additional plugins, just dump the egg files into `deluge_config/plugins` and add them to the plugin list in `deluge_config/core.conf`. 
