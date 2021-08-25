

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


## Code Style
Prefer signals where possible.
Use exported variables where possible.
Contain responsibility to a single object where possible.
Use lots of meta-objects to represent intermediary state.


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

### [`editor/settings/`](editor/settings/)
The menu used for changing settings.

### [`editor/history`](editor/history/)
*(TODO Describe)*

### [`editor/help/`](editor/help/)
*(TODO Describe)*

---

*(Restructure these commands into deeper objects)*
*(TODO Make Modal (See Diagram))*

### [`editor/view/grow-up/`](editor/view/grow-up/)
Add previous view-element to current-view.
Command.
Bound to `ctrl+alt+uparrow` by default.

### [`editor/view/shrink-up/`](editor/view/shrink-up/)
Remove previous view-element from current-view.
Command.
Bound to `ctrl+shift+downarrow` by default.

### [`editor/view/grow-down/`](editor/view/grow-down/)
Add next view-element to current-view.
Command.
Bound to `ctrl+alt+downarrow` by default.

### [`editor/view/shrink-down/`](editor/view/shrink-down/)
Remove next view-element from current-view.
Command.
Bound to `ctrl+shift+uparrow` by default.

### [`editor/view/grow-in/`](editor/view/grow-in/)
Add child cursor-element to current-view.
Command.
Bound to `ctrl+alt+leftarrow` by default.

### [`editor/view/shrink-in/`](editor/view/shrink-in/)
Remove child cursor-element from current-view.
Command.
Bound to `ctrl+shift+rightarrow` by default.

### [`editor/view/grow-out/`](editor/view/grow-out/)
Add parent view-element to current-view.
Command.
Bound to `ctrl+alt+rightarrow` by default.

### [`editor/view/shrink-out/`](editor/view/shrink-out/)
Remove parent view-element from current-view.
Command.
Bound to `ctrl+shift+leftarrow` by default.

### [`editor/help/tooltips/](editor/help/tooltips/)
Show on-screen tooltips and explanations.
Default bound to `alt`.

### [`editor/view/zoom-in/`](editor/view/zoom-in/)
Command, bound to `ctrl+=` by default, moves the `view` towards the `cursor`, towards the right of the document, deeper into the document.

### [`editor/view/zoom-out/`](editor/view/zoom-out/)
Command, bound to `ctrl+-` by default, moves the `view` away from the `cursor`, towards the left of the document, away from the document leaves.

### [`editor/view/follow/`](editor/view/follow/)
Command, makes `view` follow `cursor`.

### [`editor/cursor/move-in/`](editor/cursor/move-in/)
Move the `cursor` to the first child `element` of some `element`.
Bound to `rightarrow` by default for Vertical Distribution
and `downarrow` for Horizontal Distribution.

### [`editor/cursor/move-out/`](editor/cursor/move-out/)
Move the `cursor` to the parent `element` of some `element`.
Bound to `leftarrow` by default for Vertical Distribution
and `uparrow` for Horizontal Distribution.

### [`editor/cursor/move-prev/`](editor/cursor/move-prev/)
Move the `cursor` to the previous peer `element` within some other `element`.
Bound to `leftarrow` by default for Horizontal Distribution
and `uparrow` for Vertical Distribution.

### [`editor/cursor/move-next/`](editor/cursor/move-next/)
Move the `cursor` to the next peer `element` within some other `element`.
Bound to `rightarrow` by default for Horizontal Distribution
and `downarrow` for Vertical Distribution.

### [`editor/element/edit/`](editor/element/edit/)
Default keybinding `enter`, edits the field of an `element`.

### [`editor/element/cancel/](editor/element/edit/)
From `enter` an `element`, defaults to keybind `escape`.

### [`editor/element/apply/](editor/element/apply/)
Finalize changes (from `enter` an element).
Bound to `ctrl+enter` by default.

### [`editor/element/fold/`](editor/element/fold/)
Command, hide the children of the `element` and show in a reduced form.
Bound to `ctrl+[` by default.

### [`editor/element/unfold/`](editor/element/unfold/)
Command, hide the children of the `element` and show in a reduced form.
Bound to `ctrl+]` by default.

### [`editor/element/flip/`](editor/element/flip/)
Command, switch the `element` from a Horizontal to a Vertical distribution (or vice versa).
Bound to `ctrl+\` by default.

### [`editor/element/rename/`](editor/element/rename/)
Command, specific to members of a `dict`, allows setting of `key` field.
Bound to `ctrl+r` by default.

### [`editor/element/copy/`](editor/element/copy/)
Command, stores the selected `element` on `editor`.
Bound to `ctrl+c` by default.

### [`editor/element/cut/`](editor/element/cut/)
Command, alias for `replace` selected element (and all children) with a single `text` object.
Also called `delete`, but is same command.
Stores recently cut object in `editor`, allows for `paste` (insertion) elsewhere.
Bound to `ctrl+x` by default, but also includes `delete`.

### [`editor/element/paste/`](editor/element/paste/)
Command, insert `element` adjacent to some other `element`.
Bound to `ctrl+v` by default.

### [`editor/element/replace/`](editor/element/replace/)
Command, replace element if `cursor` is selecting it with a different element.
Also covers insertion, creation (new).
Bound to `alt+enter` by default.

### [`editor/element/list/`](editor/element/list/)
Generic grouping of elements.
Can be created on `replace` by typing `[` or `]`.

### [`editor/element/dict/`](editor/element/dict/)
Key-Value mapping.
Can be created on `replace` by typing `{` or `}`.

### [`editor/element/text/`](editor/element/text/)
Automatically escapes characters in text.
Can be created on `replace` by typing `'` or `"`.

### [`editor/element/bool/`](editor/element/bool/)
`True` and `False`.
Can be created on `replace` by typing `f` or `t`.

### [`editor/element/existential`](editor/element/existential/)
`Null`.
Can be created on `replace` by confirming (no string entered).

### [`editor/file/save/`](editor/file/save/)
Save opened document to file in OS tree.
Also a Command, bound to `ctrl+s`.

### [`editor/file/find/`](editor/file/find/)
Find and open a document in the OS tree.
Also a Command, bound to `ctrl+o`.

### [`editor/file/load/`](editor/file/load/)
Parse a file into a JSON document.
Done automatically, but documents can be reloaded from files with `F5` by default.

### [`editor/history/do/`](editor/file/do/)
Add the current document state to the file object as a step.
Deletes any following edits.
No keybinding.

### [`editor/history/undo/`](editor/file/undo/)
*(TODO Description)*
Bound to `ctrl+z` by default.

### [`editor/history/redo/`](editor/file/redo/)
*(TODO Description)*
Bound to `ctrl+y` by default.

### [`editor/user/login`](editor/user/login/)
*(TODO Description)*
No keybinding.

### [`editor/user/default`](editor/user/default/)
*(TODO Description)*

### [`editor/user/load`](editor/user/load/)
*(TODO Description)*
No keybinding.

### [`editor/user/save`](editor/user/save/)
*(TODO Description)*
No keybinding.

### [`editor/cursor/select/`](editor/cursor/select/)
The selection, can be built up/down.
Bound to `shift+movement` by default.

---

### [`editor/cursor/select/add/`](editor/cursor/select/add/)
*(TODO Description)*

### [`editor/cursor/select/remove/`](editor/cursor/select/remove/)
*(TODO Description)*

### [`editor/element/dict/insert/`](editor/element/dict/insert/)
*(TODO Description)*

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





