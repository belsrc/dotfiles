Terminal colors command
```bash
cp .dircolors ~/.dircolors
eval `dircolors ~/.dircolors`
```

Terminal font install commands
```bash
sudo mkdir /usr/local/share/fonts/truetype/fonts
sudo mv {script dir/}*.txt /usr/local/share/fonts/truetype/fonts
sudo chown root /usr/local/share/fonts/truetype/fonts/*.ttf
cd /usr/local/share/fonts
fc-cache
```
