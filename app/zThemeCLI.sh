#!/bin/bash

# CLEAR SCREEN

clear;

# COLOURS

Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

possibleColors=(${BIBlack} ${BIRed} ${BIGreen} ${BIYellow} ${BIBlue} ${BIPurple} ${BICyan} ${BRed} ${BGreen} ${BYellow} ${BBlue} ${BPurple} ${BCyan});

nameColor=${possibleColors[$RANDOM % ${#possibleColors[@]} ]}

# Start

# echo -e "${nameColor}   _______ _                         ${Color_Off}";
# echo -e "${nameColor}  |__   __| |                        ${Color_Off}";
# echo -e "${nameColor}  ___| |  | |__   ___ _ __ ___   ___ ${Color_Off}";
# echo -e "${nameColor} |_  / |  | '_ \ / _ \ '_ \` _ \ / _ \\ ${Color_Off}";
# echo -e "${nameColor}  / /| |  | | | |  __/ | | | | |  __/${Color_Off}";
# echo -e "${nameColor} /___|_|  |_| |_|\___|_| |_| |_|\___|${Color_Off}";
# echo -e "${nameColor}                                     ${Color_Off}";
# echo -e "${nameColor}                                     ${Color_Off}";

help() {
    clear;
    echo -e "${nameColor}   _______ _                         ${Color_Off}";
    echo -e "${nameColor}  |__   __| |                        ${Color_Off}";
    echo -e "${nameColor}  ___| |  | |__   ___ _ __ ___   ___ ${Color_Off}";
    echo -e "${nameColor} |_  / |  | '_ \ / _ \ '_ \` _ \ / _ \\ ${Color_Off}";
    echo -e "${nameColor}  / /| |  | | | |  __/ | | | | |  __/${Color_Off}";
    echo -e "${nameColor} /___|_|  |_| |_|\___|_| |_| |_|\___|${Color_Off}";
    echo -e "${nameColor}                                     ${Color_Off}";
    echo -e "${nameColor}                                     ${Color_Off}";
    echo -e "${IPurple}Direct Usage:${Color_Off}";
    echo -e "";
    echo -e "${IGreen}./zTheme${Color_Off} ";
    echo -e "    ${IBlue}-a${Color_Off} ${IGreen}\"${Color_Off}${IRed}Joseph Shenton${Color_Off}${IGreen}\"${Color_Off} "
    echo -e "    ${IBlue}-n${Color_Off} ${IGreen}\"${Color_Off}${IRed}My Awesome Theme${Color_Off}${IGreen}\"${Color_Off}"
    echo -e "    ${IBlue}-v${Color_Off} ${IGreen}\"${Color_Off}${IRed}1.0.0${Color_Off}${IGreen}\"${Color_Off}"
    echo -e "    ${IBlue}-b${Color_Off} ${IGreen}\"${Color_Off}${IRed}com.joseph.theme${Color_Off}${IGreen}\"${Color_Off}"
    echo -e "    ${IBlue}-u${Color_Off} ${IGreen}\"${Color_Off}${IRed}https://example.com/com.joseph.theme/${Color_Off}${IGreen}\"${Color_Off}"
    echo -e "    ${IBlue}-s${Color_Off} ${IGreen}\"${Color_Off}${IRed}1${Color_Off}${IGreen}\"${Color_Off}"
    echo -e "    ${IBlue}-d${Color_Off} ${IGreen}\"${Color_Off}${IRed}/Users/username/Desktop/theme.deb${Color_Off}${IGreen}\"${Color_Off}"
    echo -e "   ${IBlue} -f${Color_Off} ${IGreen}\"${Color_Off}${IRed}true${Color_Off}${IGreen}\"${Color_Off}"
    exit;
}

hasAuthor=false
hasName=false
hasVersion=false
hasBundle=false
hasURL=false
hasSelection=false
hasDEB=false
hasFeatures=false

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -a|--author)
    themeAuthor="$2"
    hasAuthor=true
    shift # past argument
    shift # past value
    ;;
    -n|--name)
    themeName="$2"
    hasName=true
    shift # past argument
    shift # past value
    ;;
    -v|--version)
    themeVersion="$2"
    hasVersion=true
    shift # past argument
    shift # past value
    ;;
    -b|--bundle)
    themeBundle="$2"
    hasBundle=true
    shift # past argument
    shift # past value
    ;;
    -u|--url)
    themeURL="$2"
    hasURL=true
    shift # past argument
    shift # past value
    ;;
    -s|--selection)
    themeSelection="$2"
    hasSelection=true
    shift # past argument
    shift # past value
    ;;
    -d|--deb)
    iOSTheme="$2"
    hasDEB=true
    shift # past argument
    shift # past value
    ;;
    -f|--features)
    usesFeatures="$2"
    hasFeatures=true
    shift # past argument
    shift # past value
    ;;
    -h|--help)
    # help;
    shift # past argument
    shift # past value
    ;;
    --default)
    DEFAULT=YES
    shift # past argument
    ;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

# Offline Mode

curl -L -s http://google.com > /dev/null

if [ $? -eq 0 ]; then
    # ONLINE
    BUNDLEIDS="https://raw.githubusercontent.com/JosephShenton/zTheme/master/bundleIDs.txt";
    curl -L -s $BUNDLEIDS > "bundleIDs.txt"
    IN=$(cat "bundleIDs.txt")
else
    # OFFLINE
    if [[ $(find "bundleIDs.txt" -mtime +2 -print) ]]; then
        if [ "$1" != "--force" ] || [ "$1" != "-f" ]; then
            echo "Whilst zTheme supports offline usage, you are required"
            echo "to go online and run the script once every two days to"
            echo "keep the bundle id list up-to-date."
            echo -e "\n"
            echo "To bypass this you can use the following command."
            echo "./zTheme --force"
            exit;
        fi
    fi

    BUNDLEIDS="bundleIDs.txt";
    IN=$(cat $BUNDLEIDS)

fi

defaultName="Untitled"
defaultAuthor=$(dscl . -read "/Users/$(who am i | awk '{print $1}')" RealName | sed -n 's/^ //g;2p')
defaultVersion="1.0.0"
defaultBundle="com.zTheme.$defaultName"
defaultURL="https://github.com/JosephShenton/zTheme"
defaultSelection="0"
defaultFeatures=""
defaultDEB=""

themeName=${themeName:-"$defaultName"}
themeAuthor=${themeAuthor:-"$defaultAuthor"}
themeVersion=${themeVersion:-"$defaultVersion"}
themeBundle=${themeBundle:-"$defaultBundle"}
themeURL=${themeURL:-"$defaultURL"}
iOSTheme=${iOSTheme:-"$defaultDEB"}
themeSelection=${themeSelection:-"$defaultSelection"}
usesFeatures=${usesFeatures:-"$defaultFeatures"}

resetScreen() {

    # Reset Screen
    clear;

    # echo -e "${BIGreen}Theme Name:${Color_Off} $themeName"
    # echo -e "${BIGreen}Theme Author:${Color_Off} $themeAuthor"
    # echo -e "${BIGreen}Theme Version:${Color_Off} $themeVersion"
    # echo -e "${BIGreen}Theme Bundle ID:${Color_Off} $themeBundle"
    # echo -e "${BIGreen}Theme URL:${Color_Off} $themeURL"
    # echo -e "${BIGreen}iOS Theme Location:${Color_Off} $iOSTheme"
    # echo -e "${BIGreen}macOS Location:${Color_Off} /Users/$USER/Desktop/zTheme/$themeName"
    # echo -e "\n"

}

resetScreen

mkdir -p "/Users/$USER/Desktop/zTheme";
mkdir -p "/Users/$USER/Desktop/zTheme/$themeName";
mkdir -p "/Users/$USER/Desktop/zTheme/$themeName/iOS";
cd "/Users/$USER/Desktop/zTheme/$themeName";

cat > Info.plist <<EOF
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>URL</key>
    <string>$themeURL</string>
    <key>usesFeatures</key>
    <$usesFeatures/>
    <key>BundleIdentifier</key>
    <string>$themeBundle</string>
    <key>DisplayName</key>
    <string>$themeName</string>
    <key>Author</key>
    <string>$themeAuthor</string>
    <key>Version</key>
    <string>$themeVersion</string>
</dict>
</plist>
EOF

cp "$iOSTheme" "/Users/$USER/Desktop/zTheme/$themeName/theme.deb"

ar -x theme.deb

tar -xf data.tar*

rm theme.deb
rm control.tar*
rm data.tar*
rm debian-binary

cd "Library/Themes"

i=0;
EXTRA=".theme/"
# echo -e "${BYellow}Which theme would you like to convert?${Color_Off}";

themes=()
for d in */ ; do
    themes+=( "$d" )
    # echo -e "${BPurple}$i)${Color_Off} ${d//$EXTRA/}"
    ((i=i+1))
done

# Set Uses Features
if [[ "$hasSelection" = false ]]; then
    read -p "Theme Selection ($defaultSelection): " themeSelection
    themeSelection=${themeSelection:-"$defaultSelection"}
fi

selectedTheme=${themes[$themeSelection]}
clearTheme=${selectedTheme//"/"/}

resetScreen

# echo -e "${BBlue}Theme to Convert:${Color_Off} ${selectedTheme//$EXTRA/}"

cp -a "${clearTheme}IconBundles/." "../../iOS/"

cd "../../iOS/";

while IFS= read -ra LINE; do
    for i in "${LINE[@]}"; do
        # process "$i"
        while IFS=':' read -ra BNID; do
            for file in *; do
                if [[ $file == *"${BNID[0]}-large"* ]]; then
                    clean=${file//"-large"/}
                    macOSName="${clean/${BNID[0]}/${BNID[1]}}"
                    iOSName=$file;
                    # echo "$PWD";
                    cp "$PWD/$iOSName" "$PWD/../$macOSName"
                fi
            done
        done <<< "$LINE"
    done
done <<< "$IN"

cd "../"

rm -rf "iOS"
rm -rf "Library"
cd "../"

touch "/Users/$USER/Desktop/zTheme/$themeName/zTheme.converted"

mv "/Users/$USER/Desktop/zTheme/$themeName" "/Users/$USER/Desktop/zTheme/$themeName.bundle"

# echo -e "${BBlue}Conversion finished!${Color_Off}"
# echo -e "${BIPurple}$themeName is located at:${Color_Off} /Users/$USER/Desktop/zTheme/$themeName.bundle"

convertedTheme="/Users/$USER/Desktop/zTheme/$themeName.bundle/zTheme.converted"
if [ -f "$convertedTheme" ]; then
    clear;
    echo "Theme has been converted! It can be found on your Desktop in the zTheme folder!"
else 
    clear;
    echo "Failed to convert the theme! Please try again!"
fi