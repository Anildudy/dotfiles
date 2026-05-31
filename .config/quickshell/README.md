# Start Quickshell in configuration folder
qs -p ~/.config/dotfiles-settings-quickshell &

# Toggle Settings App
qs -p ~/.config/dotfiles-settings-quickshell ipc call settings toggle

# Toggle Welcome App
qs -p ~/.config/dotfiles-settings-quickshell ipc call welcome toggle

2. Cross-App Launching

In your Welcome App, you can make the "Dotfiles Settings" button actually trigger the Settings window via IPC rather than launching a whole new process. In your WelcomeWindow.qml button's onClicked:
QML

onClicked: {
    // This tells the background daemon to show the other window
    Quickshell.execute(["qs", "-p", Quickshell.env("HOME") + "/.config/dotfiles-settings-quickshell", "ipc", "call", "settings", "open"])
}
