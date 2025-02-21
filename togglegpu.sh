#!/bin/bash

# check getmode output
switch_mode() {
    local mode
    mode=$(supergfxctl -g)

    if [[ "$mode" == "Hybrid" ]]; then
        supergfxctl -m Integrated && gnome-session-quit --logout --no-prompt
    elif [[ "$mode" == "Integrated" ]]; then
        supergfxctl -m Hybrid && gnome-session-quit --logout --no-prompt
    else
        echo "Unknown mode or error while executing getmode: $mode"
        exit 1
    fi
}
actualmode=$(supergfxctl -g)
zenity --question --title="Confirm logout" --text="Are you sure you want to end the session? The current mode is: $actualmode"
# Check user choise
if [ $? -eq 0 ]; then
    # L'utente ha cliccato "Sì"
    # Richiama la funzione
    switch_mode
else
    # L'utente ha cliccato "No" o ha chiuso la finestra
    echo "Logout canceled."
fi
