All needed commands are in commands.sh. Just do chmod +x commands.sh and then run it. It will install all programs and move all files to the correct folders
2. This was done on arch if you want to edit the ascii art in neofetch go to line 763 and do "yourdistro_small" but dont forget to check if your distro actually supports _small.
Since EndeavourOS doesn't have endeavouros_small I've added it to /usr/bin/neofetch. This will be installed with commands.sh
4. You will probably need to tweak the monitor settings in hypr/hyprland.conf, just do $ hyprctl monitors all and you'll see the monitor name and possible configs, copy the format that i have setup. Don't forget to remove mine afterwards
Officially tested only for EndeavourOS
