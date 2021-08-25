

# Architecture


## About

This is a basic overview of the architecture for InStructEd.
It only covers the most basic of concepts, and is used for planning and teaching.
If you need help, consult the [`CREDITS.md`](CREDITS.md) for some basic tutorials on Godot.
Most links are to project-folder locations. Click on them to see the discussed *Object*.

### A Note on Godot
Godot has four primary filetypes: **Objects**, **Scripts**, **Resources**, and **Folders**.  
**Objects**   (`.tscn`), also called *Scenes*, are plaintext serializations of UI forms.  
**Scripts**   (`.gd`), including *Classes*, are callback method describers for *Objects*.  
**Resources** (`.*`), including *Images*, are static binary multimedia data which *Objects* can display.  
**Folders**   (`/`) organize *Objects*, *Scripts*, and *Resources* together.

Any shared *Resources* are placed under `editor/editor`, but otherwise *Resources* are placed in the same folder as the *Objects* that need them.  
It is implied that most *Folders* listed here have some primary *Object* and *Script* named similarly to the folder contained within.

### A Note on Documentation
The scope of this project demands fast documentation.
Most *Objects* are only documented in their *Scripts*.
This In-Script documentation details more definitively what an object is and does.
Refer back to this document to understand how *Objects* relate to one another.


## Birds Eye View

[![Overview of Architecture for InStructEd](resources/arch-overview.png)](resources/arch-overview.png)

*(TODO Overview)*


## Code Map

This is a complete breakdown and description of all folders and their role in the project.
The sections are grouped by depth, not aspect.

*(TODO Paths)*

### [`_._`](./)
Documents describing the project and miscellaneous configuration files.  
[`README.md`](README.md) give a topical overview.  
[`ARCH.md`](ARCH.md) describes technical details.  
[`LICENSE`](LICENSE) covers legal matters.  
[`CREDITS.md`](CREDITS.md) lists help and used projects.

---

### [`editor/`](editor/)
The actual Godot project root.

### [`resources/`](resources/)
Miscellaneous images to document the project.

---

### [`editor/editor/`](editor/editor/)
Global themes, scripts, and objects used throughout the editor.
Display scaling rules, UI generation rules.

### [`editor/view/`](editor/view/)
The `view` object allows a user to zoom in/out from the cursor.

### [`editor/cursor/`](editor/cursor/)
The `cursor` objects allows a user to move around a document, select elements, and perform manipulations.

### [`editor/element/`](editor/element/)
The `element` object represents the elements of a JSON document.

### [`editor/file/`](editor/file/)
The `file` object is used to save, load, and locate JSON files.

### [`editor/user/`](editor/user/)
The `user` object loads, saves, synchronizes, and applies settings to the editor.

---

### [`editor/view/zoom-in/`](editor/view/zoom-in/)
*(TODO Description)*

### [`editor/view/zoom-out/`](editor/view/zoom-out/)
*(TODO Description)*

### [`editor/view/follow/`](editor/view/follow/)
*(TODO Description)*

### [`editor/element/delete/`](editor/element/delete/)
*(TODO Description)*

### [`editor/element/replace/`](editor/element/replace/)
*(TODO Description)*

### [`editor/element/list/`](editor/element/list/)
*(TODO Description)*

### [`editor/element/dict/`](editor/element/dict/)
*(TODO Description)*

### [`editor/element/text/`](editor/element/text/)
*(TODO Description)*

---

### [`editor/element/list/insert-before/`](editor/element/insert-before/)
*(TODO Description)*

### [`editor/element/list/insert-after/`](editor/element/insert-before/)
*(TODO Description)*


## Cross Cutting Concerns

These are aspects which cover many objects or need to be moved to actual objects.
New/unintegrated features should be listed here until they are assigned to an appropriate object.
Anything listed here implies it is not well understood yet.

*(TODO Add Concerns)*

### User Settings
```yaml
physical tables:
  user:
    id: 
      physical: string unique required
      reason: request
      groups: identity
      input: automatic salted machinename username
      example values: [81w0d091jw9jd18hw0hd]
      example input: [NameOfComputer9000/NameOfUser]
    color theme:
      physical: string limited required
      reason: request
      groups: settings
      values: [light, dark, stars, tapestry]
    window theme:
      physical: string limited required
      reason: request
      groups: settings
      values: [basic, glass, solid, void]
    sound theme:
      physical: string limited required
      reason: request
      groups: settings
      values: [silent, glitch, papers, machine]
```

### Multiple Input Methods
- (Mouse, Keyboard, Touch)
- Where to put these in the project?
- On the individual features themselves?
- Should some special `command` object exist for handling all of these input methods?





