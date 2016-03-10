#!/bin/bash

# 
# This file is part of PiDelayedAuditoryFeedback.
# Learn more at: https://github.com/blaues0cke/PiDelayedAuditoryFeedback
# 
# Author:  Thomas Kekeisen <pidelayedauditoryfeedback@tk.ca.kekeisen.it>
# License: This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
#          To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
#

echo "Installing services, copying code"

cp /usr/pi-delayed-auditory-feedback/service.sh /etc/init.d/pi-delayed-auditory-feedback

echo "Fixing rights"

chmod 0777 /etc/init.d/pi-delayed-auditory-feedback

echo "Registering services"

update-rc.d pi-delayed-auditory-feedback defaults

echo "Done installing services"