#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

style="$($HOME/.config/rofi/applets/menu/style.sh)"

dir="$HOME/.config/rofi/applets/menu/configs/$style"
rofi_command="rofi -theme $dir/apps.rasi"

# Links
terminal=""
files=""
editor=""
browser=""
music=""
settings=""

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "$1"
}

# Variable passed to rofi
options="$terminal\n$files\n$editor\n$browser\n$music\n$settings"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
		if [[ -f /usr/bin/termite ]]; then
			termite &
		elif [[ -f /usr/bin/urxvt ]]; then
			urxvt &
		elif [[ -f /usr/bin/kitty ]]; then
			notify-send -i gnome-xterm "Launching Terminal Emulator" "~ Kitty"
                        kitty &

		elif [[ -f /usr/bin/xterm ]]; then
			xterm &
		elif [[ -f /usr/bin/xfce4-terminal ]]; then
			xfce4-terminal &
		elif [[ -f /usr/bin/gnome-terminal ]]; then
			gnome-terminal &
		else
			msg "No suitable terminal found!"
		fi
        ;;
    $files)
		if [[ -f /usr/bin/thunar ]]; then
			thunar &
		elif [[ -f /usr/bin/nautilus ]]; then
			notify-send -i system-file-manager "Launching File Explorer" "~ Nautilus"
			nautilus &
		else
			msg "No suitable file manager found!"
		fi
        ;;
    $editor)
		if [[ -f /usr/bin/emacs ]]; then
			notify-send -i emacs "Launching Text Editor" "~ Emacs"
			emacs &
		elif [[ -f /usr/bin/leafpad ]]; then
			leafpad &
		elif [[ -f /usr/bin/mousepad ]]; then
			mousepad &
		elif [[ -f /usr/bin/code ]]; then
			code &
		else
			msg "No suitable text editor found!"
		fi
        ;;
    $browser)
		if [[ -f /usr/bin/qutebrowser ]]; then
			notify-send -i webkit "Launching Browser" "~ Qutebrowser"
			qutebrowser &
		elif [[ -f /usr/bin/chromium ]]; then
			chromium &
		elif [[ -f /usr/bin/midori ]]; then
			midori &
		else
			msg "No suitable web browser found!"
		fi
        ;;
    $music)
		if [[ -f /usr/bin/spotify ]]; then
			notify-send -i spotify-beta "Launching Music Player" "~ Spotify"
			spotify &
		else
			msg "No suitable music player found!"

		fi
        ;;
    $settings)
		if [[ -f /usr/bin/qt5ct ]]; then
			notify-send -i designer-qt5 "Launching Qt Settings" "~ Qt5ct Pannel"
			qt5ct &
		else
			msg "No suitable settings manager found!"
		fi
        ;;
esac
