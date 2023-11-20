# WinMouseOverMinimize
Here's what it does:

1. It waits for the middle mouse button (`#MButton`) to be clicked.
2. When the middle mouse button is clicked, it gets the ID of the window under the mouse cursor (`MouseGetPos,,, aID`).
3. It retrieves the style of the window (`WinGet, Style, Style, ahk_id %aID%`).
4. It checks if the window can be minimized (`If ( Style & ( WS_MINIMIZEBOX := 0x20000) )`).
5. If the window can be minimized, it minimizes the window (`WinMinimize, ahk_id %aID%`).

This script should work as expected as long as you run it with AutoHotKey and you have the necessary permissions to minimize the window. If you're experiencing issues, please provide more details.



---

This script was made for Windows 10 specifically because this isn't an option by default.
If you want this script to automatically run on startup, you can put it in the startup folder.

---

To hide the system tray icon for an AutoHotKey script, you can use the `#NoTrayIcon` directive at the top of your script. This will prevent the script's icon from appearing in the system tray.

Here's how you can modify your script:

```autohotkey
#NoTrayIcon

#MButton::
MouseGetPos,,, aID
WinGet, Style, Style, ahk_id %aID%
If ( Style & ( WS_MINIMIZEBOX := 0x20000) )
    WinMinimize, ahk_id %aID%
return
```

Please note that with this directive, the script will be running in the background and there will be no system tray icon to interact with. You'll need to use the Task Manager to end the script if necessary.