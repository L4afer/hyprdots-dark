yay -S waybar kitty nvim neofetch rofi grim slurp wl-clipboard
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp -r ~/Downloads/hyprdots-dark/.config/nvim ~/.config
cp -r ~/Downloads/hyprdots-dark/.config/waybar/ ~/.config
cp -r ~/Downloads/hyprdots-dark/.config/rofi ~/.config/
cp -r ~/Downloads/hyprdots-dark/.config/neofetch ~/.config
sudo cp -r ~/Downloads/hyprdots-dark/.config/neofetch/neofetch /usr/bin/neofetch
cp -r ~/Downloads/hyprdots-dark/.config/kitty ~/.config
cp -r ~/Downloads/hyprdots-dark/.config/kitty/.zshrc ~/
cp -r ~/Downloads/hyprdots-dark/.config/hypr ~/.config/
cp -r ~/Downloads/hyprdots-dark/.config/hypr/screenshot.sh ~/.local/bin/
sudo chmod +x ~/.local/bin/screenshot.sh
nvim --headless "+Lazy! sync" +qa
