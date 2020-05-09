# zTheme
zTheme converts iOS themes into macOS Theme Kit Themes

## Note
> App is not finished yet.

> I will gladly accept any pull request which improves this code, provides further functionality or updates the list of bundle ids.

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

# Built for macOS and [ThemeKit](https://github.com/MTACS/ThemeKit)

### Copyright Joseph Shenton 2020
