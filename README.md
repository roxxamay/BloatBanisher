# Android Bloatware Remover Script

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Getting Started](#getting-started)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)
4. [Usage](#usage)
5. [Customization](#customization)
6. [Contributing](#contributing)
7. [Troubleshooting](#troubleshooting)
8. [License](#license)
9. [Acknowledgments](#acknowledgments)

## Introduction

The Android Bloatware Remover Script is a Bash script designed to simplify the process of removing bloatware from Android devices using the Android Debug Bridge (ADB). Bloatware, pre-installed applications that come with the device, can be intrusive and unwanted. This script provides a menu-driven interface to list devices, installed apps, and uninstall specific bloatware based on the device's manufacturer.

## Features

- Menu-driven interface for ease of use.
- Options to list connected devices and installed apps.
- Uninstall bloatware associated with major manufacturers (Facebook, Google, Microsoft, Motorola, Samsung, Xiaomi).

## Getting Started

### Prerequisites

Before using the script, make sure you have the following prerequisites:

- [Android Debug Bridge (ADB)](https://developer.android.com/studio/command-line/adb) installed on your computer.
- An Android device connected to the computer with USB debugging enabled.

### Installation

1. Clone or download this repository to your local machine.

    ```bash
    git clone https://github.com/roxxamay/android-bloatware-remover.git
    ```

2. Navigate to the script directory.

    ```bash
    cd android-bloatware-remover
    ```

## Usage

1. Open a terminal in the script directory.

2. Run the script:

    ```bash
    ./bloatware_remover.sh
    ```

3. Follow the on-screen instructions to choose options for listing devices, listing installed apps, and uninstalling bloatware.

## Customization

The script is designed to handle bloatware associated with major manufacturers. However, you may customize it by adding or removing packages based on your device's specific bloatware. Open the script file (`bloatware_remover.sh`) and modify the package names in the relevant sections.

## Contributing

Contributions are welcome! If you encounter issues or want to enhance the script, please open an issue or submit a pull request. Follow the [Contributing Guidelines](CONTRIBUTING.md) for more details.

## Troubleshooting

If you encounter any issues, please check the [Troubleshooting Guide](docs/TROUBLESHOOTING.md) for common problems and solutions.


## Acknowledgments

Special thanks to the open-source community and contributors who have helped improve this script.
