## Open

- Replace greenclip with Wayland tools
    + Issue: greenclip is only compatible with X11, so it should be replaced with a suitable Wayland alternative
    - [ ] Remove greenclip config
    - [ ] Install Wayland clipboard tools
    - [ ] Adapt rofi clipmenu
    - [ ] Launch clipboard daemon with user session
- Install wluma for adjusting screen brightness
- Handle rofi errors
    + Handle errors when e.g. app was not found  with appmenu rofi script
- Auto-detect devices for scrutiny config
- Refine taskell keybindings
- Refine keybindings for hyprland compositor
- Install gparted
- Fix languagetool systemd errors
- Fix rofi bookmarkmenu
- Install screenshot utility on Wayland
- Rofi session switcher
- Switch to flake for Hyprland
- Add keyboard layout in Plasma with config
- Fix keyboardswitcher shell script
- Switch to flake for Hyrland
- Fix missing polkit agent (use Etcher to reproduce)
- Fix Docker and Git aliases sourcing problem
- Install a proper diff tool
- Add WakeOnLAN config for all hosts
- Add disk labels for sangria and grape and update mount configs
- Fix dolphin no found error on Hyprland
- Fix Nextcloud Client window autoclose on Hyprland
- Make disk clone of raspberry and mulberry after successful boot into new generation
- Fix "warning: optionsDocBook is deprecated since 23.11 and will be removed in 24.05"
- Fix "warning: mdadm: Neither MAILADDR nor PROGRAM has been set. This will cause the `mdmon` service to crash."
- Run ssh-setup script after install to add host key to Codeberg and update remote
- Fix random sleep issues on purple
- Add Firefox extension configs (uBlock Origin, Sidebery, uBlacklist etc.)
- Disk setup with disko
- Install diskonaut
- Upgrade hosts to 23.05
	- [x] purple
	- [x] grape
	- [ ] violet
	- [ ] macbook
	- [x] sangria

## In Progress

- Fix missing polkit agent (use Etcher to reproduce)
- zgen not being initialized when no internet connection
- Fix rofi windowmenu
- Enable screen sharing on Wayland
    - [ ] Install and configure pipewire
    - [ ] Disable pulseaudio
    - [ ] Test OBS screen recording
- Fix home-manager issues with Trolltech.conf and gtk2 conf

## Completed

- Fix random sleep issues on purple (due to picom)
- Install Dracula KDE theme with NixOS config
- Install Plasma on purple
- Install XFCE on purple
- Unify audio modules
- Enable HDMI audio output on grape
- Replace zgen with zgenom
