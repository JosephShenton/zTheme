// This file is required by the index.html file and will
// be executed in the renderer process for that window.
// All of the Node.js APIs are available in this process.
const { remote } = require('electron');

if (process.platform == 'darwin') {
  const { systemPreferences } = remote;

  const setOSTheme = () => {
    let theme = systemPreferences.isDarkMode() ? 'dark' : 'light';
    window.localStorage.os_theme = theme;

    //
    // Defined in index.html, so undefined when launching the app.
    // Will be defined for `systemPreferences.subscribeNotification` callback.
    //
    if ('__setTheme' in window) {
      window.__setTheme();
    }
  }

  systemPreferences.subscribeNotification(
    'AppleInterfaceThemeChangedNotification',
    setOSTheme,
  );

  setOSTheme();
}

// window.localStorage.username = process.env.username || process.env.user;