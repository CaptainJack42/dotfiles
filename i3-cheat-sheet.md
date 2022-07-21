# i3-WM Cheatsheat

- Modkey: **`META`** (`mod`)

Config location: `$HOME/.config/i3/config`
i3status config location: `$HOME/.config/i3/i3status.conf` (adjust status command in config)

## Hotkeys for Applications

- Dmenu: `mod + D`
- Terminal: `mod + Enter` / `ctrl + alt_left + T` / `mod + KP_Enter`
- Arcolinux Welcome app: `ctrl + alt_left + w`
- Archlinux Tweak Tool: `ctrl + alt_left + e`
- Rofi Theme Selector: `ctrl + alt_left + r`
- Pavucontrol: `ctrl + alt_left + u`
- Firefox: `ctrl + alt_left + f`
- Dolphing: `mod + e` / `mod + Shift + Enter` / `mod + Shift + KP_Enter`
- Flameshot: `Print`
- Toggle status Bar: `mod + b`
- Mode System Power: `ctrl + alt_left + x`
- arch logout Screen: `ctrl + alt_left + s`
- kill focused Window: `mod + q` / `mod + Shift + q`
- xkill: `mod + esc`

## Navigation / Management

### Navigation

- Focus left:  `mod + h` / `mod + left`
- Focus down:  `mod + j` / `mod + down`
- Focus up:    `mod + k` / `mod + up`
- Focus right: `mod + l` / `mod + right`
- Focus parent container: `mod + a`

### Management

#### Window movement

- Move Focused left:  `mod + Shift + h` / `mod + Shift + left`
- Move Focused down:  `mod + Shift + j` / `mod + Shift + down`
- Move Focused up:    `mod + Shift + k` / `mod + Shift + up`
- Move Focused right: `mod + Shift + l` / `mod + Shift + right`
- Move Floating Window: *like above* / `mod + Mouse drag`

##### Mode Gaps

Enter with `mod + Shift + g`

- Edit outer gaps: `o`
- Edit inner gaps: `i`
- increase gaps: `+`
- decrease gaps: `-`
- set gaps to 0: `0`
- set gaps to default: `1`
- increase all gaps: `Shift + +`
- decrease all gaps: `Shift + -`
- set all gaps to 0: `Shift + 0`
- set all gaps to default: `Shift + 1`

#### Tiling management

<!-- - Split horizontal: `mod + g`
- Split vertical: `mod + v` -->
- Toggle Split horizontal / vertical: `mod + v`
- Toggle Fullscreen: `mod + f`
<!-- - Toggle stacking: `mod + s`
- Toggle tabbed: `mod + w`
- Toggle split Layout: `mod + e` -->
- Toggle split / tabbed layout: `mod + g` (focus parent first for entire workspace)
- Toggle tiling/floating: `mod + Shift + space` (focus parent first for entire workspace)
- Switch focus between tiling/floating windows: `mod + space`

#### Resize Mode

Enter with `mod + r`

- shrink width: `h` / `left`
- grow height: `j` / `down`
- shrink height: `k` / `up`
- grow width: `l` / `right`
- escape resize mode: `esc` / `enter` / `mod + r`

### Workspace management

Workspaces with *odd* numbers, the Terminal and Code Workspace will always be on HDMI-0 (primary Screen) and Workspaces with *even* numbers, the Browser and Spotify Workspace will be on DP-0 (secondary (big) Screen).

- Workspace Terminal:       `mod + <`
- Workspace Browser:        `mod + y`
- Workspace Code:           `mod + x`
- Workspace Spotify:        `mod + c`
- Other Workspaces:         `mod + <1-10, F1-F12, '<', y, x, c>`
- Next Workspace:           `alt_left + tab` / `ctrl + alt_left + up`
- Previous Workspace:       `alt_left + Shift + tab` / `ctrl + alt_left + down`
- Workspace back and forth: `mod + tab`
- Move focused window (container) to Workspace: `mod + ctrl + <1-10, F1-F12, '<', y, x, c>`
- Move focused window (container) to Workspace: `mod + Shift + <1-10, F1-F12, '<', y, x, c>`
- Move entire Workspace to other Monitor: `mod + alt_left + y`

The previous Workspace can also be accessed by pressing the Keybind to the current Workspace (e.g. Start on **Workspace 1** -> `mod + 5` -> **Workspace 5** -> `mod + 5` -> **Workspace 1**)

## i3 management

<!-- - reload config file: `mod + Shift + c` -->
- restart i3: `mod + Shift + r`
- exit i3 (don't use this i guess): `mod + Shift + e`
