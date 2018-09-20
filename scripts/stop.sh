#!/bin/sh
    
[[ -e /etc/init/helloworld.conf ]] \
  && sudo status helloworld | \
    grep -q '^helloworld start/running, process' \
  && [[ $? -eq 0 ]] \
  && sudo stop helloworld || echo "Application not started"  

