# dotfiles

![img](/ss/screenshot.png)

## Information

- OS: [ArcoLinux](https://arcolinux.com/)
- Terminal: [Alacritty](https://github.com/alacritty/alacritty)
- Shell: [ZSH](https://github.com/zsh-users/zsh)
- WM: [i3](https://i3wm.org/) (see [i3-cheat-sheet](i3-cheat-sheet.md) for bindings)
- Status Bar: [i3status-rust](https://github.com/greshake/i3status-rust) (not shown in Screenshot, will be updated soon :tm:, Screenshot is with default i3bar (with [py3status](https://github.com/ultrabug/py3status)))

---

- Editor: [VSCode](https://code.visualstudio.com/) and [neovim](https://github.com/neovim/neovim) (with [AstroNvim](https://github.com/AstroNvim/AstroNvim))
- File Manager: [Ranger](https://github.com/ranger/ranger)
- Music: [Spotify-TUI](https://github.com/Rigellute/spotify-tui)
- System Monitor: [bottom](https://github.com/clementtsang/bottom)
- Shell prompt: [starship](https://starship.rs)
- VSCode Theme: [Atom One Dark](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-theme-onedark) (see [below](#atom-one-custom-colors))
- Font: [JetBrains Mono](https://aur.archlinux.org/packages/nerd-fonts-jetbrains-mono)

## Atom one custom colors

Add this to your `settings.json` in VSCode.

```json
 "workbench.colorCustomizations": {
  "[Atom One Dark]": {
   "foreground": "#959cbd",
   "editor.background": "#131620",
   "panelTitle.activeBorder": "#3d59a1",
   "panelTitle.activeForeground": "#bdc7f0",
   "panelTitle.inactiveForeground": "#959cbd",
   "tab.activeForeground": "#bdc7f0",
   "tab.inactiveForeground": "#959cbd",
   "breadcrumb.foreground": "#959cbd",
   "breadcrumb.focusForeground": "#bdc7f0",
   "breadcrumb.activeSelectionForeground": "#bdc7f0",
   "statusBar.foreground": "#bdc7f0",
   "list.focusForeground": "#bdc7f0",
   "list.hoverForeground": "#bdc7f0",
   "list.activeSelectionForeground": "#bdc7f0",
   "list.inactiveSelectionForeground": "#bdc7f0",
   "list.inactiveSelectionBackground": "#202330",
   "sideBar.foreground": "#959cbd",
   "dropdown.foreground": "#959cbd",
   "menu.foreground": "#bdc7f0",
   "menubar.selectionForeground": "#bdc7f0",
   "input.foreground": "#959cbd",
   "input.placeholderForeground": "#959cbd",
   "activityBar.foreground": "#bdc7f0",
   "activityBar.inactiveForeground": "#787c99",
   "gitDecoration.ignoredResourceForeground": "#696d87",
   "editorCodeLens.foreground": "#7982a9", // Preferred hex color
   "editor.wordHighlightBackground": "#6f7bb644",
   "editor.wordHighlightStrongBackground": "#6f7bb655",
   "editor.selectionHighlightBackground": "#072eee33",
  }
 },
```
