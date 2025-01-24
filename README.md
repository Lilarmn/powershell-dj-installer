# powershell-dj-installer
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Django](https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=white)
![Shell Script](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

## Description

The **DJ Bash Installer** automates the installation of a custom Bash function called `dj`, designed to simplify common Django management commands. This function allows you to quickly run commands like `makemigrations`, `migrate`, `runserver`, and more — all through a simple command in your terminal.

## Features

- Automatically installs and configures the `dj` function.
- Supports common Django management commands like:
  - `makemigrations` (`mm`)
  - `migrate` (`m`)
  - `runserver` (`run`)
  - `startapp` (`sa`)
  - `createsuperuser` (`cs`)
- Adds the function to the PowerShell profile if it doesn’t already exist.
- Ensures seamless integration with your development environment.

## Installation

To install the **DJ Bash Installer** script:

1. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/powershell-dj-installer.git
   cd powershell-dj-installer


2. **Run the installation script: On Windows, you can run the script in PowerShell or Git Bash:**:
   ```bash
   ./install_dj.sh

3. **Profile Update: The script will automatically update your PowerShell profile to add the dj function. After running the script, reload your profile with the following command:**:
   ```bash
   . $PROFILE

3. **Usage**:
   ```bash
    dj mm           # Run makemigrations
    dj m            # Run migrate
    dj run          # Run the Django development server
    dj sa <appname>  # Start a new Django app
    dj cs           # Create a Django superuser


##Coming soon for Linux :)

---

### Steps to Follow on GitHub:
1. **Repository Name**: Name your repository (e.g., `powershell-dj-installer`).
2. **Add the README File**: Paste the above content into a `README.md` file in your GitHub repository.
3. **Commit**: Push the changes to GitHub to make the documentation available.

This README is designed for a GitHub repository and explains how to use and install the DJ Bash Installer script effectively.

