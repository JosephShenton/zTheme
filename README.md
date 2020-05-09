# zTheme
zTheme converts iOS themes into macOS Theme Kit Themes

## Note
> App is not finished yet.

> I will gladly accept any pull request which improves this code, provides further functionality or updates the list of bundle ids.

> zTheme has implement pre-support for Trash Icons and Notification Badge icons. It should work out of the box if @ThemeKitApp implement it the way we recommended. [Recommendations](https://github.com/JosephShenton/zTheme/blob/master/dockResearch.md)

# Installation

Download zTheme

# Usage

```bash
# Only do this the first time.
chmod +x zTheme

./zTheme

iOS Location is your iOS Theme DEB file.
```

# What it does

zTheme takes a list of bundle ids from this repository and scans the pre-existing iOS Theme for matching bundle ids and replaces it with the corresponding macOS bundle id if it is known.

zTheme requires the DEB file of the iOS theme to work.

zTheme will output into a folder called zTheme on your desktop.

# Built for macOS and [ThemeKit](https://github.com/ThemeKitApp/ThemeKit)

### Copyright Joseph Shenton 2020
