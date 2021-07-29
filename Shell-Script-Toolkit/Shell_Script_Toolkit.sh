#!/bin/zsh

# Terminal window - minimize window, move to top/left corner, resize, wait a few seconds, bring to front and then restore window
printf '\e[2t' && printf '\033[3;0;0t' && printf '\033[8;55;110t' && sleep 1 && printf '\e[5t' && printf '\e[1t'

# Attribute
GITHUB_URL="https://github.com/Oleg-Chashko"
RELEASE_VERSION="v.0.0.2 build [07.28.2021]"
ROOT_PASSWORD=0

# Foreground
F_Black='\033[0;30m'  # Black
F_Red='\033[0;31m'    # Red
F_Green='\033[0;32m'  # Green
F_Yellow='\033[0;33m' # Yellow
F_Blue='\033[0;34m'   # Blue
F_Purple='\033[0;35m' # Magenta
F_Cyan='\033[0;36m'   # Cyan
F_White='\033[0;37m'  # White
# Default foreground color
No_Foreground='\033[39m'

# Background
B_Black='\033[0;100m'   # Dark gray
B_Red='\033[0;101m'     # Light red
B_Green='\033[0;102m'   # Light green
B_Yellow='\033[0;103m'  # Light yellow
B_Blue='\033[0;104m'    # Light blue
B_Magenta='\033[0;105m' # Light magenta
B_Cyan='\033[0;106m'    # Light cyan
B_White='\033[0;107m'   # White
# Default background color
No_Background='\033[49m'

# Bold/Bright
Bold='\033[1m'     # Bold
No_Bold='\033[21m' # Reset Bold
# Dim
Dim='\033[2m'     # Dim
No_Dim='\033[22m' # Reset Dim
# Italic
Italic='\033[3m'     # Italic
No_Italic='\033[23m' # Reset Italic
# Underline
ULine='\033[4m'     # Underline
No_ULine='\033[24m' # Reset Underlined
# Blink
Blink='\033[5m'     # Blink
No_Blink='\033[25m' # Reset Blink
# Reverse
Reverse='\033[7m'     # Reverse
No_Reverse='\033[27m' # Reset Reverse
# Hidden
Hidden='\033[8m'     # Hidden
No_Hidden='\033[28m' # Reset Hidden

# Resets all colors and formatting
No_Attributes='\033[0m'

# Menu
showMenu() {
    echo "\n                                     ${F_Blue}${Bold}Welcome to Shell Script Toolkit${No_Attributes}"
    echo "                                       ${Dim}${RELEASE_VERSION}${No_Attributes}"
    echo "                                     ${Dim}${GITHUB_URL}${No_Attributes}\n"

    echo "                        ********************************************************"
    echo "                        * ${F_Cyan}${Bold}Command ${F_Red}${Bold}i${F_Cyan}${Bold}: ${Italic}Installing the Xcode Command Line Tools${No_Attributes}   *"
    echo "                        * ${F_Cyan}${Bold}Command ${F_Red}${Bold}u${F_Cyan}${Bold}: ${Italic}Uninstalling the Xcode Command Line Tools${No_Attributes} *"
    echo "                        ********************************************************\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}1${F_Cyan}${Bold}: ${Italic}Show GateKeeper Status${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Check GateKeeper status\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}2${F_Cyan}${Bold}: ${Italic}Enable GateKeeper${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Enables GateKeeper\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}3${F_Cyan}${Bold}: ${Italic}Disable GateKeeper${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Disables GateKeeper"
    echo "      ${F_Red}${Bold}Note:${No_Attributes} Caution, your actions could lead to potential security and privacy issues\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}4${F_Cyan}${Bold}: ${Italic}Remove app from GateKeeper quarantine${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Allows an individual quarantined app to run\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}5${F_Cyan}${Bold}: ${Italic}Self-sign the app${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} If GateKeeper is on and your app quits unexpectedly, try self-signing"
    echo "      ${F_Red}${Bold}Note:${No_Attributes} Require Xcode or Xcode Command Line Tools\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}6${F_Cyan}${Bold}: ${Italic}List apps from unknown sources${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} List apps from unknown sources you’ve approved for use\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}7${F_Cyan}${Bold}: ${Italic}Restoring the Default Gatekeeper Database${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Restoring the Default Gatekeeper Database"
    echo "      ${F_Red}${Bold}Note:${No_Attributes} After resetting all gatekeeper settings, reboot the system\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}8${F_Cyan}${Bold}: ${Italic}Restart computer${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Restart computer (needs confirmation)"
    echo "      ${F_Red}${Bold}Note:${No_Attributes} Confirmation is required for to restart\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}9${F_Cyan}${Bold}: ${Italic}Shutdown computer${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Shutdown computer (needs confirmation)"
    echo "      ${F_Red}${Bold}Note:${No_Attributes} Confirmation is required for to shutdown\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}10${F_Cyan}${Bold}: ${Italic}Flush DNS cache${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Flushes local DNS cache"
    echo "      ${F_Red}${Bold}Note:${No_Attributes} But DNS cache gets corrupted, then you can run into problems loading sites, with error 404\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}11${F_Cyan}${Bold}: ${Italic}Show Firewall Status${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Check Firewall status\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}12${F_Cyan}${Bold}: ${Italic}Firewall Enable${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Enables Firewall\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}13${F_Cyan}${Bold}: ${Italic}Firewall Disable${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Disables Firewall\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}14${F_Cyan}${Bold}: ${Italic}Firewall List${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} List applications handled by firewall\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}15${F_Cyan}${Bold}: ${Italic}L${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} L\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}16${F_Cyan}${Bold}: ${Italic}L${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} L\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}17${F_Cyan}${Bold}: ${Italic}L${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} L\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}18${F_Cyan}${Bold}: ${Italic}L${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} L\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}19${F_Cyan}${Bold}: ${Italic}L${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} L\n"

    echo "${F_Cyan}${Bold}Command ${F_Red}${Bold}20${F_Cyan}${Bold}: ${Italic}L${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} L\n"

    echo " ${F_Cyan}${Bold}Command ${F_Red}${Bold}0${F_Cyan}${Bold}: ${Italic}Quit Shell Script Toolbox${No_Attributes}"
    echo "   ${F_Green}${Bold}Meaning:${No_Attributes} Deleting terminal command history and Terminal to quit\n"

}

# Asks password
askPassword() {
    case $ROOT_PASSWORD in
    0)
        echo " ${F_Cyan}Please provide your password to proceed.${No_Attributes}\n"
        ROOT_PASSWORD=1
        ;;
    esac
}

# Shows continue message
continueMessage() {
    echo "\n Press any key to return to the menu."
    read
}

# Installing the Xcode Command Line Tools
installingXCLT() {
    echo "${F_Red} •${F_Green}You choose to Install the Xcode Command Line Tools.${No_Attributes}\n"
    askPassword
    sudo xcode-select --install
    continueMessage
}

# Uninstalling the Xcode Command Line Tools
uninstallingXCLT() {
    echo "${F_Red} •${F_Green}You choose to Uninstall the Xcode Command Line Tools.${No_Attributes}\n"
    askPassword
    sudo rm -rf /Library/Developer/CommandLineTools
    echo " ${F_Red}Done.${No_Attributes}"
    continueMessage
}

# Shows gatekeeper status
showGateKeeperStatus() {
    echo "${F_Red} •${F_Green}You choose to show GateKeeper status.${No_Attributes}\n"
    askPassword
    sudo spctl --status
    continueMessage
}

# Enables gatekeeper
enableGateKeeper() {
    echo "${F_Red} •${F_Green}You chose to enable GateKeeper. Good for you!${No_Attributes}\n"
    askPassword
    sudo spctl --master-enable
    echo " ${F_Red}GateKeeper enabled.${No_Attributes}"
    continueMessage
}

# Disables gatekeeper
disableGateKeeper() {
    echo "${F_Red} •${F_Green}You chose to disable GateKeeper.${No_Attributes}"
    echo -e "    ${F_Red}-> Danger!${No_Attributes}"
    echo -e "       Disabling GateKeeper is a very bad idea and creates."
    echo -e "       a major security hole in macOS\n"
    askPassword
    sudo spctl --master-disable
    echo " ${F_Red}GateKeeper disabled.${No_Attributes}"
    continueMessage
}

# Removes an app from gatekeeper quarantine
removeAppFromGateKeeper() {
    echo "${F_Red} •${F_Green}You chose to remove the app from GateKeeper quarantine.${No_Attributes}\n"
    read "? Drag & drop the app on this window and then press Return: " FILEPATH
    askPassword
    sudo xattr -r -d com.apple.quarantine "$FILEPATH"
    if [ $? -eq 0 ]; then
        echo " ${F_Red}App removed from quarantine.${No_Attributes}"
    else
        echo " ${F_Red}App could not be removed from quarantine!${No_Attributes}"
    fi
    continueMessage
}

# Self-signs an app
selfSignApp() {
    echo "${F_Red} •${F_Green}You chose to self-sign an app.${No_Attributes}\n"
    read "? Drag & drop the app on this window and then press Return: " FILEPATH
    askPassword
    sudo codesign -f -v -s - --deep "$FILEPATH"
    echo " ${F_Red}If you see - replacing existing signature - that means you are done!${No_Attributes}"
    continueMessage
}

# List apps from unknown sources
listAppsFromUnknownSources() {
    echo "${F_Red} •${F_Green}List apps from unknown sources.${No_Attributes}\n"
    askPassword
    sudo spctl --list | grep UNLABELED
    continueMessage
}

# Restoring the Default Gatekeeper Database
restoringTheDefaultGatekeeperDatabase() {
    echo "${F_Red} •${F_Green}Restoring the Default Gatekeeper Database.${No_Attributes}\n"
    askPassword
    sudo spctl --reset-default
    continueMessage
}

# Restart computer (needs confirmation)
restartComputerNeedsConfirmation() {
    # Deleting macOS terminal command history
    echo "${F_Red} •${F_Green}Deleting macOS terminal command history.${No_Attributes}"
    echo "${F_Red} •${F_Green}You choose to Restart computer.${No_Attributes}\n"
    askPassword
    sudo rm -rf .zsh_sessions
    sudo rm -rf .zsh_history
    sleep 1 && echo " ${F_Green}Done.${No_Attributes}"
    sudo osascript -e 'tell app "loginwindow" to «event aevtrrst»'
    continueMessage
}

# Shutdown computer (needs confirmation)
shutdownComputerNeedsConfirmation() {
    # Deleting macOS terminal command history
    echo "${F_Red} •${F_Green}Deleting macOS terminal command history.${No_Attributes}"
    echo "${F_Red} •${F_Green}You choose to Shutdown computer.${No_Attributes}\n"
    askPassword
    sudo rm -rf .zsh_sessions
    sudo rm -rf .zsh_history
    sleep 1 && echo " ${F_Green}Done.${No_Attributes}"
    sudo osascript -e 'tell app "loginwindow" to «event aevtrsdn»'
    continueMessage
}

# Flushes local DNS cache
flushesLocalDNS() {
    VERSION=$(sw_vers -productVersion)
    echo "${F_Red} •${F_Green}Flushing dns...${No_Attributes}\n"
    askPassword
    if echo $VERSION | grep -E '^10\.10(\.[0-3])?$' >/dev/null 2>&1; then
        sudo discoveryutil mdnsflushcache
    elif echo $VERSION | grep -E '^10\.6(\.[0-8])?$' >/dev/null 2>&1; then
        sudo dscacheutil -flushcache
    else
        sudo killall -HUP mDNSResponder
    fi
    sleep 1 && echo " ${F_Green}Done.${No_Attributes}"
    continueMessage
}

# Show firewall status
statusFirewall() {
    echo "${F_Red} •${F_Green}You choose to Show firewall status.${No_Attributes}\n"
    askPassword
    sudo /usr/libexec/ApplicationFirewall/socketfilterfw --getglobalstate
    continueMessage
}

# Enables firewall
enableFirewall() {
    echo "${F_Red} •${F_Green}You choose to Enable firewall.${No_Attributes}\n"
    askPassword
    sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
    continueMessage
}

# Disables firewall
disableFirewall() {
    echo "${F_Red} •${F_Green}You choose to Disable firewall.${No_Attributes}\n"
    askPassword
    sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate off
    continueMessage
}

# List applications handled by firewall
listFirewall() {
    echo "${F_Red} •${F_Green}You choose to List applications handled by firewall.${No_Attributes}\n"
    askPassword
    sudo /usr/libexec/ApplicationFirewall/socketfilterfw --list
    continueMessage
}

# Terminal to quit
quit() {
    # Deleting macOS terminal command history and Terminal to quit
    echo "${F_Red} •${F_Green}Deleting macOS terminal command history.${No_Attributes}\n"
    askPassword
    sudo rm -rf .zsh_sessions
    sudo rm -rf .zsh_history
    sleep 1 && echo " ${F_Green}Done.${No_Attributes}"
    # Terminal to quit
    sleep 1 && osascript -e 'tell application "Terminal" to quit'
    read
}

# Shows invalid Command message
showInvalid() {
    echo "${F_Red} •An unacceptable Command has been selected: ${F_Red}${Bold}${SELECTED_COMMAND}${No_Attributes}"
    continueMessage
}

# Main function of the script
startScript() {
    while :; do
        clear
        showMenu

        read "?Please select an Command: " SELECTED_COMMAND

        case $SELECTED_COMMAND in

        i)
            clear
            installingXCLT
            ;;

        u)
            clear
            uninstallingXCLT
            ;;

        0)
            clear
            quit
            ;;

        1)
            clear
            showGateKeeperStatus
            ;;

        2)
            clear
            enableGateKeeper
            ;;

        3)
            clear
            disableGateKeeper
            ;;

        4)
            clear
            removeAppFromGateKeeper
            ;;

        5)
            clear
            selfSignApp
            ;;

        6)
            clear
            listAppsFromUnknownSources
            ;;

        7)
            clear
            restoringTheDefaultGatekeeperDatabase
            ;;

        8)
            clear
            restartComputerNeedsConfirmation
            ;;

        9)
            clear
            shutdownComputerNeedsConfirmation
            ;;

        10)
            clear
            flushesLocalDNS
            ;;

        11)
            clear
            statusFirewall
            ;;

        12)
            clear
            enableFirewall
            ;;

        13)
            clear
            disableFirewall
            ;;

        14)
            clear
            listFirewall
            ;;

        *)
            clear
            showInvalid
            ;;
        esac
    done
}

startScript
