    ; Create GUI
    Gui, Add, Text, x20 y20 w200 h20, Select mouse button or key to click:
    Gui, Add, Radio, x20 y50 w100 h20 gToggleMouseButton, Left mouse button
    Gui, Add, Radio, x20 y80 w100 h20 gToggleMouseButton, Right mouse button
    Gui, Add, Radio, x20 y110 w100 h20 gToggleMouseButton, Middle mouse button
    Gui, Add, Radio, x20 y140 w100 h20 gToggleKey, Spacebar
    Gui, Add, Text, x20 y180 w200 h20, Enter clicks per second (cps):
    Gui, Add, Edit, x20 y210 w100 h20 vCPS, 12
    Gui, Add, Button, x20 y250 w100 h30 gStartClicking, Start Clicking
    Gui, Show, w250 h300, AutoHotkey Clicker

    ; Variables
    global button := "LButton" ; default to left mouse button
    global cps := 12 ; default to 12 clicks per second

    ; Functions
    ToggleMouseButton:
        If (A_GuiEvent = "Left mouse button")
            button := "LButton"
        else if (A_GuiEvent = "Right mouse button")
            button := "RButton"
        else if (A_GuiEvent = "Middle mouse button")
            button := "MButton"
    return

    ToggleKey:
        button := "Space"
    return

    StartClicking:
        Gui, Submit
        SetTimer, ClickButton, % Round(1000/cps)
    return

    ClickButton:
        If GetKeyState(button,"P")
            Click, %button%
        else
            SetTimer, ClickButton, Off
    return
