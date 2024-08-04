    #!/bin/bash
    
compositor=picom
if pgrep -x $compositor
then
pkill $compositor
dunstify -u normal "picom is off."
exit
fi

if ! pgrep -x $compositor
then
$compositor &>/dev/null &
dunstify -u normal "picom is on."
exit
fi

