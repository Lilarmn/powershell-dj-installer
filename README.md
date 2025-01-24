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
