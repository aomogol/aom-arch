kquitapp plasma-desktop
 sleep 20s
 mkdir -p $HOME/plasma-config/
 mv $(kde4-config --localprefix)/share/config/plasma-desktop* $HOME/plasma-config/
plasma-desktop &
