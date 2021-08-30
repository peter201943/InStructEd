

[![MIT License](https://img.shields.io/github/license/peter201943/InStructEd.svg?style=flat)](https://opensource.org/licenses/MIT)
[![Godot Engine](https://img.shields.io/badge/GODOT-%23FFFFFF.svg?style=flat&logo=godot-engine&color=grey)](https://godotengine.org/)
[![Firebase](https://img.shields.io/badge/firebase-%23039BE5.svg?style=flat&logo=firebase)](https://firebase.google.com/)
[![Firefox](https://img.shields.io/badge/Firefox-FF7139?style=flat&logo=Firefox-Browser&logoColor=white)](https://www.mozilla.org/en-US/firefox/new/)
[![Itch.io](https://img.shields.io/badge/Itch-%23FF0B34.svg?style=flat&logo=Itch.io&logoColor=white&label=InStructEd)](https://peter201943.itch.io/instructed)  

[![InStructEd Logo](resources/logo.png)](https://github.com/peter201943/InStructEd)


# InStructEd


An [INformed](https://json-schema.org/) [STRUCTural](https://en.wikipedia.org/wiki/Structure_editor) [EDitor](https://en.wikipedia.org/wiki/Integrated_development_environment) for [JSON](https://www.json.org/json-en.html).


## Contents
- [Contents](#contents)
- [About](#about)
  - [Users](#users)
  - [System](#system)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Browser](#browser)
  - [Local](#local)
- [Usage](#usage)
  - [Opening Files](#opening-files)
  - [Saving Files](#saving-files)
  - [Changing Settings](#changing-settings)
  - [Reassigning Keys](#reassigning-keys)
  - [Basic Navigation](#basic-navigation)
  - [Basic Manipulations](#basic-manipulations)
  - [Core Concepts](#basic-manipulations)
  - [Keyboard Controls](#keyboard-controls)
  - [Touch Controls](#touch-controls)
  - [Mouse Controls](#mouse-controls)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
  - [Architecture](#architecture)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Accepting Changes](#accepting-changes)
- [License](#license)
- [Contact](#contact)
  - [Primary Maintainer](#primary-maintainer)
  - [Project](#project)
- [Acknowledgements](#acknowledgements)


## About

[![InStructEd Screenshot](resources/cover.png)](https://www.youtube.com/watch?v=AJhlhspagAU)

(TODO Click to see Demo)

A Drexel `CS-338` GUI Project to demonstrate knowledge of UI design.

### Users
Users should be familiar with JSON (JavaScript Object Notation), and can use Shortcuts similar to MicroSoft Word or the IBM CUA (Common User Access), and have mouse/keyboard experience.
Users who want to create new JSON documents, handle large JSON documents, edit JSON with a generic interface, manipulate JSON with fast, simple interface.
Common editing operations are performed quickly through shortcuts, complex element nesting made obvious through recursively-nested and beautifully-displayed boxes, JSON interactions exposed through pathways.

### System
JSON parsing, string parsing, JSON serialization, recursive box rendering, widget state control and display, smooth box and widget animations, JSON file streaming, user configuration loading, HTTPS networking.
Smooth animations on performing an edit operation, target-oriented widget display and keybind mutations, fast, responsive commands (and effects), smooth element navigation (no irritating scroll-bars, obvious indication of remaining elements).
Managed through a web-exportable game-engine (Godot).
The nesting and widget management will be tedious without a reliable framework with many features already implemented.
The only networked data are user-configurations.
To manage these as cheaply and easily as possible, Google Firebase is used to hold the username-hash and config-string (as tabular fields).


### Built With
- [Godot](https://godotengine.org/)
- [Firebase](https://firebase.google.com/)
- [Itch](https://itch.io/)


## Getting Started

### Browser
Visit [The Project Website](https://cs.drexel.edu/~pjm349/instructed) to run InStructEd in your browser.

### Local
See the [Releases Page](https://github.com/peter201943/InStructEd/releases) for a build of your platform.


## Usage

### Demo
[![InStructEd Demo](resources/cover.png)](https://www.youtube.com/)  
Click on the image to watch a demonstration of InStructEd.

### Core Concepts
[![Core Concepts in InStructEd](resources/core-concepts.png)](resources/core-concepts.png)  
*(TODO Core Concepts Description)*

### Opening Files
[![Opening a File in InStructEd](resources/open-a-file.png)](resources/open-a-file.png)  
*(TODO How to Open a File Description)*

### Saving Files
[![Saving a File in InStructEd](resources/save-a-file.png)](resources/save-a-file.png)  
*(TODO How to Save a File Description)*

### Basic Navigation
[![Navigating in InStructEd](resources/navigation.png)](resources/navigation.png)  
*(TODO Navigation Description)*

### Basic Manipulations
[![Manipulating Fields in InStructEd](resources/manipulation.png)](resources/manipulation.png)  
*(TODO Manipulating Fields Description)*

### Keyboard Controls
[![Keyboard Controls in InStructEd](resources/keyboard-controls.png)](resources/keyboard-controls.png)  
*(TODO Keyboard Controls Description)*

### Touch Controls
[![Touch Controls in InStructEd](resources/touch-controls.png)](resources/touch-controls.png)  
*(TODO Touch Controls Description)*

### Mouse Controls
[![Mouse Controls in InStructEd](resources/mouse-controls.png)](resources/mouse-controls.png)  
*(TODO Mouse Controls Description)*

### Changing Settings
[![Changing Settings in InStructEd](resources/change-settings.png)](resources/change-settings.png)  
*(TODO Changing Settings Description)*

### Reassigning Keys
[![Reassigning Keys in InStructEd](resources/reassign-keys.png)](reassign-keys.png)  
*(TODO Reassigning Keys Description)*


## Roadmap
- [x] Project Repo Settings
- [x] Basic Project README
- [x] Basic Project ARCH
- [x] Basic Project CREDITS
- [x] Detailed Project README
- [x] Detailed Project ARCH
- [x] Detailed CREDITS
- [ ] Complete Project README
- [ ] Complete Project ARCH
- [x] Complete Project CREDITS
- [ ] Basic Project HTML Export Settings
- [ ] Basic Project HTML Page Settings
- [ ] Basic Tabular UI Generation Feature
- [ ] Basic List Generation Feature
- [ ] Basic Dictionary Generation Feature
- [ ] Basic Text Display Feature
- [ ] Basic Tabular Keyboard View Manipulation Input
- [ ] Basic Tabular Keyboard Cursor Manipulation Input
- [ ] Basic Tabular Keyboard Element Manipulation Input
- [ ] Basic Tabular Mouse View Manipulation Input
- [ ] Basic Tabular Mouse Cursor Manipulation Input
- [ ] Basic Tabular Mouse Element Manipulation Input
- [ ] Basic Tabular Touch View Manipulation Input
- [ ] Basic Tabular Touch Cursor Manipulation Input
- [ ] Basic Tabular Touch Element Manipulation Input
- [ ] File Save Command
- [ ] File Open Command
- [ ] View Zoom In/Out Command
- [ ] Cursor Next/Previous Command
- [ ] Cursor In/Out Command
- [ ] Dictionary Element Rename Command
- [ ] Any Element Field Edit Command
- [ ] Any Element Replace Command
- [ ] Any Element Remove Command
- [ ] List Element Insert Command
- [ ] List Element Append Command
- [ ] Element Insert Into Command
- [ ] Advanced Desktop Display Scaling Feature
- [ ] Basic Mobile Display Scaling Feature
- [ ] Basic JSON Loading Feature
- [ ] Basic JSON Saving Feature
- [ ] Basic User Login Feature
- [ ] Basic User Creation Feature
- [ ] Firebase Account Settings
- [ ] Full User Settings Saving Feature
- [ ] Basic User Settings Loading Feature
- [ ] Basic User Settings Feature
- [ ] Drexel Homepages Hosting Settings
- [ ] Basic Keybinds Settings Feature
- [ ] Project Presentation Deliverable
- [ ] Project Zip Deliverable
- [ ] Advanced Keyboard Manipulations
- [ ] Advanced Mouse Manipulations
- [ ] Advanced Touch Manipulations
- [ ] Advanced Mobile Display Scaling
- [ ] Full User Settings Loading
- [ ] Basic Edit History
- [ ] Basic Edit History Manipulation
- [ ] Basic Location Bookmarking
- [ ] Markdown Field Rendering
- [ ] Cursor View Following Command

See [`ARCH.md`](ARCH.md) for more details.


## Contributing

### Architecture
See [`ARCH.md`](ARCH.md) to get a basic understanding of how the project works.
Also take a look at some of the other Godot projects listed under [`CREDITS.md`](CREDITS.md) to get a good understanding of how Godot works and how to structure a Godot project.

### Prerequisites
- [Godot v3.3.3](https://godotengine.org/download)

### Installation
1. Clone the Repo
  ```bash
  git clone https://github.com/peter201943/InStructEd.git
  ```
2. "Import" the Project from Godot's Launcher

### Accepting Changes
This is a low-priority project for @peter201943 and as such pull requests are not likely to be accepted.
You will be better served by forking it and continuing development of it on your own.


## License
Distributed under the MIT License. See [`LICENSE`](LICENSE) for more information.


## Contact

### Primary Maintainer
Peter James Mangelsdorf  
[![Outlook](https://img.shields.io/badge/Microsoft_Outlook-0078D4?style=flat&logo=microsoft-outlook&logoColor=white&label=peter.j.mangelsdorf)](mailto:peter.j.mangelsdorf@outlook.com)  
[![Discord](https://img.shields.io/badge/%3CServer%3E-%237289DA.svg?style=flat&logo=discord&logoColor=white&label=peter201943%238017)](https://discord.com/)  
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=flat&logo=github&logoColor=white&label=peter201943)](https://github.com/peter201943/)  
[![Itch.io](https://img.shields.io/badge/Itch-%23FF0B34.svg?style=flat&logo=Itch.io&logoColor=white&label=peter201943)](https://peter201943.itch.io/)  

### Project
InStructEd  
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=flat&logo=github&logoColor=white&label=peter201943%2FInStructEd)](https://github.com/peter201943/InStructEd)  
[![Drexel](resources/drexel-logo.svg) cs.drexel.edu](https://www.cs.drexel.edu/~pjm349/InStructEd)  
[![Itch.io](https://img.shields.io/badge/Itch-%23FF0B34.svg?style=flat&logo=Itch.io&logoColor=white&label=InStructEd)](https://peter201943.itch.io/instructed)  


## Acknowledgements
See [`CREDITS.md`](CREDITS.md) for a complete list of external resources.


