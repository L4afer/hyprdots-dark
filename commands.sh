yay -S waybar kitty nvim neofetch rofi 
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r ~/Downloads/hyprdots-dark/.config/nvim ~/.config
cp -r ~/Downloads/hyprdots-dark/.config/waybar/ ~/.config
cp -r ~/Downloads/hyprdots-dark/.config/rofi ~/.config/
cp -r ~/Downloads/hyprdots-dark/.config/neofetch ~/.config
cp -r ~/Downloads/hyprdots-dark/.config/neofetch/neofetch /usr/bin/neofetch
cp -r ~/Downloads/hyprdots-dark/.config/kitty ~/.config
cp -r ~/Downloads/hyprdots-dark/.config/kitty/.zshrc ~/
cp -r ~/Downloads/hyprdots-dark/.config/hypr ~/.config/
