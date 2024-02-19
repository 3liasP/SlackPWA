#!/bin/bash

# Determine the script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Define paths
INSTALL_DIR="$HOME/.local/share/applications"
ICON_DIR="$HOME/.local/share/icons/slack-pwa"
ICON_PATH="$ICON_DIR/slack-pwa.png"
DESKTOP_ENTRY_PATH="$INSTALL_DIR/slack-pwa.desktop"
SCRIPT_PATH="$INSTALL_DIR/slack-pwa.sh"

# Create directories if they don't exist
mkdir -p "$ICON_DIR"
mkdir -p "$INSTALL_DIR"

# Copy the local PNG file to the icon directory
cp "$SCRIPT_DIR/desktop/slack-pwa.png" "$ICON_PATH"

# Prompt user for Slack domain
read -p "Enter your Slack domain (e.g., company): " SLACK_DOMAIN

# Create the launcher script
echo "#!/bin/bash" > "$SCRIPT_PATH"
echo "/usr/bin/google-chrome --app=https://$SLACK_DOMAIN.slack.com/ \"\$@\" &" >> "$SCRIPT_PATH"
chmod +x "$SCRIPT_PATH"

# Create the desktop entry
echo "[Desktop Entry]" > "$DESKTOP_ENTRY_PATH"
echo "Version=1.0" >> "$DESKTOP_ENTRY_PATH"
echo "Type=Application" >> "$DESKTOP_ENTRY_PATH"
echo "Name=Slack PWA" >> "$DESKTOP_ENTRY_PATH"
echo "Comment=Slack PWA for Linux" >> "$DESKTOP_ENTRY_PATH"
echo "Exec=$SCRIPT_PATH" >> "$DESKTOP_ENTRY_PATH"
echo "Icon=$ICON_PATH" >> "$DESKTOP_ENTRY_PATH"
echo "Path=" >> "$DESKTOP_ENTRY_PATH"
echo "Terminal=false" >> "$DESKTOP_ENTRY_PATH"
echo "StartupNotify=true" >> "$DESKTOP_ENTRY_PATH"
echo "Categories=GNOME;GTK;Network;InstantMessaging;" >> "$DESKTOP_ENTRY_PATH"
echo "StartupWMClass=slack-pwa" >> "$DESKTOP_ENTRY_PATH"

echo "Slack PWA installation completed!"
echo "You can now launch Slack PWA from your application menu."
