#!/bin/bash

# Define the PowerShell profile path for Linux
PROFILE_PATH="$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1"

# Define the function to add to the profile
DJ_FUNCTION='
function dj {
    param(
        [string]$package,
        [string]$extraArg = $null
    )

    if (-not $package) {
        Write-Host "Error: Please provide a query name." -ForegroundColor Red
        return
    }

    if (-not (Test-Path ./manage.py)) {
        Write-Host "Error: \'manage.py\' not found in the current directory." -ForegroundColor Red
        return
    }

    if ($package -eq "mm") {
        Write-Host "Running \'makemigrations\'..." -ForegroundColor Green
        ./manage.py makemigrations
    } elseif ($package -eq "m") {
        Write-Host "Running \'migrate\'..." -ForegroundColor Green
        ./manage.py migrate
    } elseif ($package -eq "run") {
        Write-Host "Running \'runserver\'..." -ForegroundColor Green
        ./manage.py runserver
    } elseif ($package -eq "sa") {
        if (-not $extraArg) {
            Write-Host "Error: Please provide an app name for \'startapp\'." -ForegroundColor Red
            return
        }
        Write-Host "Creating new app \'$extraArg\'..." -ForegroundColor Green
        ./manage.py startapp $extraArg
    } elseif ($package -eq "cs") {
        Write-Host "Creating superuser..." -ForegroundColor Green
        ./manage.py createsuperuser
    } else {
        Write-Host "Error: Unknown command \'$package\'." -ForegroundColor Red
    }
}
'

# Check if the profile file exists
if [[ ! -f "$PROFILE_PATH" ]]; then
    echo "Profile does not exist. Creating it..."
    mkdir -p "$(dirname "$PROFILE_PATH")"
    touch "$PROFILE_PATH"
fi

# Append the function to the profile if it's not already present
if ! grep -q "function dj" "$PROFILE_PATH"; then
    echo "Adding the 'dj' function to the profile..."
    echo "$DJ_FUNCTION" >> "$PROFILE_PATH"
else
    echo "The 'dj' function is already in the profile."
fi

# Display success message
echo "Installation complete. Reloading the PowerShell profile..."
pwsh -Command ". $PROFILE_PATH"
