#!/bin/sh

# 
# This file is part of PiDelayedAuditoryFeedback.
# Learn more at: https://github.com/blaues0cke/PiDelayedAuditoryFeedback
# 
# Author:  Thomas Kekeisen <pidelayedauditoryfeedback@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#

# kFreeBSD do not accept scripts as interpreters, using #!/bin/sh and sourcing.
if [ true != "$INIT_D_SCRIPT_SOURCED" ] ; then
    set "$0" "$@"; INIT_D_SCRIPT_SOURCED=true . /lib/init/init-d-script
fi
### BEGIN INIT INFO
# Provides:          pi-delayed-auditory-feedback
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: The service behind PiDelayedAuditoryFeedback
# Description:       The service behind PiDelayedAuditoryFeedback.
### END INIT INFO

# Author: Thomas Kekeisen <pidelayedauditoryfeedback@tk.ca.kekeisen.it>
#
# This file can be found in /etc/init.d/pi-delayed-auditory-feedback

DESC="PiDelayedAuditoryFeedback audio service"
DAEMON=/usr/sbin/pi-delayed-auditory-feedback

case "$1" in
    start)
        su - root -c "sh /usr/pi-delayed-auditory-feedback/start.sh"
        ;;
    stop)
        su - root -c "sh /usr/pi-delayed-auditory-feedback/stop.sh"
        ;;
    restart)
        # RESTART
        ;;
esac
 
exit 0