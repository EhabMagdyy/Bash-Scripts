## Bash Scripts

### Table of Contents

- [1.CppClassGenerator (Create CPP Class)](#1cppclassgenerator-create-cpp-class)
- [2.CppProjectMKFile (CPP Project with Make)](#2cppprojectmkfile-cpp-project-with-make)
- [3.InternetSpeedTest](#3internetspeedtest)
- [4.SystemReport](#4systemreport)
- [5.AliasGenerator](#5aliasgenerator)
- [6.YouTubeDownloader](#6youtubedownloader)
- [7.Weather](#7weather)
- [8.CurrencyExchange](#8currencyexchange)
- [9.CountryInfo](#9countryinfo)

---

### 1.CppClassGenerator (Create CPP Class)

Automate the creation of C++ class files. The script prompts the user for essential information and generates the corresponding `.hpp` and `.cpp` files. The generated files include a namespace, class structure, and boilerplate copyright headers.

#### Features:
- Prompts for user inputs like name, class name, and namespace.
- Generates a folder for the class.
- Creates a `.hpp` header file with the provided details.
- Optionally generates a `.cpp` implementation file.
- Includes customizable boilerplate headers.

#### Example Execution
1. Run the script:
   ```bash
   bash CppClassGenerator.sh
   ```
2. Follow the prompts:
   - Enter your name: `Ehab Magdy`
   - Enter your class name: `ExampleClass`
   - Enter your namespace: `ExampleNamespace`
3. Choose whether to generate the `.cpp` file.

#### Output
- A folder named `ExampleClass`.
- Inside the folder:
  - `ExampleClass.hpp` with the class declaration.
  - (Optional) `ExampleClass.cpp` with the class implementation.

---

### 2.CppProjectMKFile (CPP Project with Make)

generates a basic C++ project structure, including directories and starter files. The structure is designed to streamline development with clear organization and a ready-to-use `Makefile`.

#### Features

- Creates a project directory with the given name.
- Generates subdirectories for `src` (source code), `inc` (header files), and `build` (compiled files).
- Provides a starter `main.cpp` and `main.hpp` file with basic content.
- Includes a `Makefile` for compiling the project.

#### Output Project Structure

```
<project_name>/
├── build/
│   └── Makefile
├── inc/
│   └── main.hpp
└── src/
    └── main.cpp
```

#### Dependencies

- GNU `make`
- `g++` (GNU C++ compiler)

---

### 3.InternetSpeedTest

This script automates the process of checking your internet speed using the `speedtest-cli` tool. It ensures that `speedtest-cli` is installed on your system and runs a speed test to display the current internet speed.

---

### 4.SystemReport

This Bash script provides comprehensive details about your system's hardware and software configurations. It displays information such as hostname, kernel version, CPU details, memory usage, disk space, network settings, and GPU details. The script uses various system commands to fetch and format this data.

#### Features

- **System Information**:
  - Hostname
  - Kernel version
  - Operating system
  - Distribution (if `lsb_release` is installed)
  - CPU architecture

- **CPU Information**:
  - Model name
  - Number of cores
  - Number of threads

- **Memory Information**:
  - Total memory
  - Used memory
  - Free memory

- **Disk Space Information**:
  - Filesystem details including size, used, available, and usage percentage

- **Network Information**:
  - IP address
  - Default gateway
  - DNS servers

- **GPU Information**:
  - GPU details if `lspci` is available

---

### 5.AliasGenerator

This Bash script simplifies the process of creating an alias for a command by automatically adding it to your `.bashrc` file. Aliases provide shortcuts for commonly used commands, enhancing productivity in the terminal.

#### Example

##### Input
```bash
Enter the command: ls -l
Enter the alias: ll
```

##### Result in `.bashrc`
```bash
# alias for ls -l -> ll
alias ll='ls -l'
```

#### Notes

- The alias becomes active only in new Bash sessions. To use it immediately, open a new terminal or run `source ~/.bashrc`.
- If `.bashrc` does not exist, the script will create an empty `.bashrc` file before adding the alias.
- Be cautious of overwriting existing aliases with the same name; ensure unique alias names.

---

### 6.YouTubeDownloader

This is a simple Bash script that uses `yt-dlp` to download videos or audio from YouTube videos or playlists. It allows you to choose between downloading video only, audio only, or both video and audio.

#### Features

- Download from **YouTube videos** or **playlists**.
- Choose to download:
  - Video only
  - Audio only (in MP3 format)
  - Both video and audio
- Saves files to a specified directory with customizable names.
- Provides an interactive interface for easy use.
- Checks if `yt-dlp` is installed and prompts for installation if missing.

#### Prerequisites

Ensure `yt-dlp` is installed on your system. If not, you can install it using:

```bash
sudo pip3 install -U yt-dlp
```

#### Usage

1. Run the script:

   ```bash
   ./downloader.sh
   ```

2. Follow the prompts:

   - **Enter the YouTube video/playlist URL**.
   - **Specify a directory** to save the downloads (default is `YTVids`).
   - **Choose a download option**:
     - `1` - Download video only
     - `2` - Download audio only (MP3)
     - `3` - Download both video and audio

3. The script will download the content based on your choice and save it to the specified directory.

#### Example Run

```
Enter YouTube Video/Playlist URL: https://www.youtube.com/playlist?list=PLexample
Enter directory to save the videos (default is 'YTVids'): MyDownloads

Please choose a download option:
-----------------------------------------
1. Download Video Only
2. Download Audio Only
3. Download Both Video and Audio
-----------------------------------------
Enter your choice (1-3): 1

Downloading video only...
[yt-dlp output]
Download completed successfully!
```

#### Notes

- **Format**: Videos are downloaded in MP4 format, and audio in MP3.
- **Dependencies**: The script relies on `yt-dlp` for downloading content.
- Ensure you have sufficient storage space for large playlists.


---

### 7.Weather

This simple Bash script allows you to check the current weather for a specified city using the `wttr.in` service. It prompts the user to enter a city name and then fetches the weather information for that city.

---

### 8.CurrencyExchange

This Bash script allows you to check the latest exchange rates for a selected base currency using the [ExchangeRate-API](https://www.exchangerate-api.com/). It uses `rofi` for interactive selection of the base currency and displays the exchange rates in a searchable list.

> Uses `rofi` to let you select or enter a base currency from a predefined list for an interactive selection.

#### Prerequisites

Before running the script, ensure you have the following installed:
- `curl`: For making API requests.
- `jq`: For parsing JSON responses.
- `rofi`: For interactive selection and display.

---

### 9.CountryInfo

This script allows you to fetch and display basic information about a country using the [REST Countries API](https://restcountries.com/). It prompts the user to enter a country name, retrieves the relevant data, and prints details such as the country's name, capital, region, and population.

#### Prerequisites

Before running the script, ensure you have the following installed:
- `curl`: For making API requests.
- `jq`: For parsing JSON responses.
