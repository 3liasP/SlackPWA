# Slack PWA for Linux

## Overview
This project provides a simple installation script and configuration files to create a Progressive Web App (PWA) wrapper for Slack on Linux. The purpose is to allow users to launch Slack as a standalone application from their desktop environment.

## Features
PWA Wrapper: Converts Slack into a standalone application using the Chromium browser.
Custom Icon: Allows users to set a custom icon for the Slack PWA in the app launcher and GNOME sidebar.

## Usage
1. Clone or download this repository to your local machine:

```bash
git clone https://github.com/yourusername/slack-pwa-linux.git
cd slack-pwa-linux
```
2. Run the installation script:

```bash
./install.sh
```
4. Follow the prompts to enter your Slack domain and complete the installation.
5. The Slack PWA should now be available in your app launcher and can e.g. be pinned to the GNOME sidebar.

## Why Use This?
- Standalone App: Launch Slack as a separate PWA-like application, independent of the web browser. Slack will still run via browser though.
- Quick Access: Easily access Slack from the app launcher or GNOME sidebar.
- Slack's own Linux desktop application doesn't support Wayland screen sharing and it's slow even tough it's just a wrapper for the web page. As of creating this project, Slack doesn't have official PWA support.

## Compatibility
This project is designed for Linux-based systems and has been tested on GNOME desktop environments. It may work on other Linux desktop environments, but results may vary.

## Notes
The PWA wrapper uses Google Chrome as the browser. Ensure you have Chromium or Google Chrome installed on your system. You may need to specify you browser and path in the [install script](install.sh). You can also find example configuration of the `.desktop`-file [here](desktop/example.desktop).
This project is not officially affiliated with Slack. It is a community-driven effort to provide a convenient way to use Slack on Linux.
Feel free to contribute or report issues here!
