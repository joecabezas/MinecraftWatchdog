MinecraftWatchdog
=================

A simple bash script that parses the server log ans take actions like sending notifications to pushover

Sintaxis
--------

	./minecraft_watchdog.sh [-f <logfile>] [-p <pushover.sh file>]

Dependencies
------------

If you want to send pushover notifications you have to clone [pushover.sh project](https://github.com/joecabezas/pushover.sh "pushover.sh") and then give
the pushover.sh file location using the -p option.

Installation
------------

There is no need to install, if you put "minecraft_watchdog.sh" in the same place as server.log file it will use it, or
you can specify the log file using the -f option.

Example
-------

	./minecraft_watchdog.sh -f /opt/msm/servers/vanilla/logs/latest.log -p /opt/pushover.sh/pushover.sh

Have fun!

See also
--------

Check this awesome minecraft server manager (MSM):

"A single init script which makes running multiple Minecraft/Bukkit servers easier for us admins."

https://github.com/marcuswhybrow/minecraft-server-manager

Donations?
--------

Having fun?, buy me a beer!

[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=joecabezas&url=https://github.com/joecabezas/LOLAutoCallPick&title=LOLAutoCallPick&language=&tags=github&category=software) [![Donate](https://www.paypalobjects.com/en_GB/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=NPEG3C3DV2YCL)
