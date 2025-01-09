# Varedit

## Overview of the Function

The varedit function creates or modifies environment variables in memory. 
Changes made using this function are session-specific and will not persist after the terminal session ends.

## The varedit function performs the following tasks:

1. Check for vipe Installation: Ensures vipe is installed on the system before proceeding.

2. Verify Input: Confirms the function is called with exactly one parameter, the name of the environment variable to edit.

3. Handle Non-Existent Variables: If the specified variable does not exist, it creates it as an empty variable.

4. Edit Using vipe: Opens the current value of the environment variable in vipe for editing.

5. Handle Changes: Updates the variable with the new value if changes are made. If no changes are made and the variable was created as empty, it unsets the variable.

## Step-by-Step Guide to Using varedit
1. Ensure vipe is Installed

Install vipe if it is not already available on your system.

On Debian/Ubuntu: `sudo apt install moreutils`

On Red Hat/Fedora: `sudo dnf install moreutils`

On macOS (with Homebrew): `brew install moreutils`

2. Add the function to bashrc

Add the function to your profile bashrc file, append to the end.

`vim ~/.bashrc`

Then we need to reload bashrc for changes to take effect

`source ~/.bashrc`

3. Use the function

Call the Function Use the function in your terminal or script by providing the name of the environment variable to edit:

`varedit VAR_NAME`

1. Edit in vipe

2. If the variable exists, its value will be shown in the vipe editor.

3. Modify the value as needed and save/exit.

4. Handle Results

5. If the variable’s value was changed, it will be updated.

6. If no changes were made and the variable was empty initially, it will be unset.
