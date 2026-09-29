## Rojo Experiment

Here im following the workflow of rojo, changing json as intended, making this path as same as in roblox stuido, someone can
clone this and connect in rojo to studio and modify the game, however, its complexity wont match for the usage. I only did
this for the sake of trying rojo in its real platform purpose, and to explore.

> **Note:** CONFIGURING JSON AND MATCHING IT IN EVERY SINGLE PROPERTY OF PART/OBJECT MIGHT TAKE A YEARS AND WONT BE WORTH IT, HERES THE SOURCE CODE SO I CAN VISIT WHENEVER I WANT AND THE DIRECTORY SKETCH/FLOW

### Directory Structure

```text

src/
├── workspace/
│   └── MainGame/                         # Model
│       ├── Buttons/                      # Folder
│       │   ├── stage1/                   # Part / Object
│       │   │   ├── duration             # IntValue
│       │   │   └── starter              # BoolValue
│       │   └── stage2/                   # Part / Object
│       │       ├── duration             # IntValue
│       │       └── starter              # BoolValue
│       │
│       ├── Coins/                        # Folder
│       │   ├── stage1/                   # Part / Object
│       │   │   └── touch                # BoolValue
│       │   └── stage2/                   # Part / Object
│       │       └── touch                # BoolValue
│       │
│       ├── Gates/                        # Folder
│       │   ├── stage1/                   # Part / Object
│       │   └── stage2/                   # Part / Object
│       │
│       └── Stages/                       # Folder
│           ├── stage1/                   # Model
│           │   ├── Part
│           │   ├── Part
│           │   ├── Part
│           │   ├── Part
│           │   └── Part
│           │
│           └── stage2/                   # Model
│               ├── Part
│               ├── Part
│               ├── Part
│               ├── Part
│               └── Part
│
└── ServerScriptService/
    ├── MainScript                       # Script
    └── PlayerStats                      # Script