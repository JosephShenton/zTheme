<p align="center">
  <a align="center" href="https://github.com/JosephShenton/zTheme" target="_blank"><img src="https://github.com/JosephShenton/zTheme/blob/master/logo.png?raw=true" width="350px" height="350px"></a>
</p>

# zTheme

Your iOS theme is now on macOS.
<p align="center">
  <a href="https://github.com/JosephShenton/zTheme/issues" align="center"><img src="https://img.shields.io/github/issues/JosephShenton/zTheme"></a>
  <a href="https://github.com/JosephShenton/zTheme/network" align="center"><img src="https://img.shields.io/github/forks/JosephShenton/zTheme"></a>
  <a href="https://github.com/JosephShenton/zTheme/stargazers" align="center"><img src="https://img.shields.io/github/stars/JosephShenton/zTheme"></a>
  <a href="" align="center"><img src="https://img.shields.io/badge/Version-1.0.1-informational"></a>

</p>

# What is zTheme?


zTheme is a macOS app/script which allows you to easily convert any iOS theme into a macOS Theme for use with [ThemeKit](https://themekit.io).

zTheme is fast, lightweight and the recommended tool for converting themes by [ThemeKit](https://themekit.io).

<p align="center">
  <p align="center">
  	<a align="center">
  		<img src="https://github.com/JosephShenton/zTheme/blob/master/dark.png?raw=true" alt="dark" width="33%">
  		<img src="https://github.com/JosephShenton/zTheme/blob/master/light.png?raw=true" alt="light" width="33%">
  	</a>
  </p>
  
  <!-- <p align="center"><a align="center"><img src="https://github.com/JosephShenton/zTheme/blob/master/light.png?raw=true" alt="light"></a></p> -->
</p>

# Installation

### Getting Started

First, visit [the Releases page](https://github.com/JosephShenton/zTheme/releases/latest) to get the latest version of ThemeKit.


#### Before Running zTheme (Important):

Currently, the zTheme app will default to the first `.theme` file inside your deb. I am working on a fix for this.

For now, you can use the zTheme binary and it will ask you which theme to convert.

# Converting Themes

zTheme automatically fetches the latest list of Bundle IDs from our GitHub repository. If you happen to be offline, it will use the one it has saved but only for two days. After that you are required to go online or use the `--force` flag.

To run the zTheme binary, it is pretty simple.

You can either run it in Terminal or just double click the binary.

### Running via Terminal

```

cd /path/to/folder/containing/zTheme/binary

./zTheme

```

### All Methods of Binary Usage

zTheme will prompt you to enter your Theme's name, Author, Version, Bundle ID, Theme (Depiction) URL, and iOS Theme Location (Theme DEB File).

Once you have provided that information it will ask you to choose a theme. 

Finally, it will convert the theme and ask if you want to copy it to the ThemeKit folder and open ThemeKit.

## Running via the app

### Prerequisites

* NodeJS
* NPM
* Electron


### Setup & Usage
```

cd /path/to/zTheme/app/folder

npm install

npm start

```


#### README Credits

[ThemeKit](https://github.com/ThemeKitApp/ThemeKit)
