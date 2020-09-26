rm -rf ~/.config/fish
mkdir -p ~/.config/fish
cp -rf ./fish/config/ ~/.config/fish/conf.d
cp -f ./fish/plugin/fishfile ~/.config/fish/fishfile
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fish
fisher