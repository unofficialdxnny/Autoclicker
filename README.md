# Autoclicker
Noob? Poor? Here is an autoclicker for any mice.


## Requirements

To use this script, you need to have the following installed on your system:

- Windows operating system
- AutoHotkey software
- Batch file support (included with Windows)

## Usage

1. Open the Command Prompt or Windows PowerShell.
2. Navigate to the folder where the `clicker.bat` file is located.
3. Type `clicker.bat` and press Enter to run the script.
4. When prompted, enter the desired clicks per second (cps) value and press Enter.
5. The script will generate an AutoHotkey script called `clicker.ahk` and run it in the background.
6. Press and hold the left mouse button to start clicking at the defined cps rate.
7. Release the left mouse button to stop clicking.

## How it works

The `clicker.bat` script prompts the user for a cps value and validates the input to ensure it is a number. If the input is not a number, the script displays an error message and prompts the user to enter the value again.

Once a valid cps value is entered, the script generates an AutoHotkey script that continuously clicks the left mouse button at the defined cps rate while the button is held down. The script uses the `GetKeyState` function to check if the left mouse button is still being held down, and breaks the loop if it is released.

The generated script is saved as `clicker.ahk` in the same folder as the batch script. The script is then run in the background using the `start` command, allowing the user to continue using the computer while the clicking continues.

When the left mouse button is released, the AutoHotkey script stops clicking and exits. The batch script automatically exits at this point as well.
