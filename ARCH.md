

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

### A Note on JSON
This assumes a strict definition of JSON, and will delete both whitespace and comments.


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

*(TODO Finish Adding Paths)*

*(TODO Revise `input` object to Handle Raw Expressions (Left/Right/Up/Down))*

*(TODO Fix Keybinds)*

*(TODO Retrieve Binds Notes From Daily Notes)*

*(TODO Find Game Inspector Plugin in Daily Notes)*


### Level 0

---

#### [`_._`](./)
Documents describing the project and miscellaneous configuration files.  
[`README.md`](README.md) give a topical overview.  
[`ARCH.md`](ARCH.md) describes technical details.  
[`LICENSE`](LICENSE) covers legal matters.  
[`CREDITS.md`](CREDITS.md) lists help and used projects.

---

### Level 1

---

#### [`docs/`](docs/)
For publishing on the web, using GitHubPages.

#### [`editor/`](editor/)
The actual Godot project root.

#### [`resources/`](resources/)
Miscellaneous images to document the project.

---

### Level 2

---

#### [`editor/cursor/`](editor/cursor/)
The `cursor` objects allows a user to move around a document, select elements, and perform manipulations.

#### [`editor/editor/`](editor/editor/)
Global themes, scripts, and objects used throughout the editor.
Display scaling rules, UI generation rules.

#### [`editor/experiment/`](editor/experiment/)
Various prototypes to drive rendering, generation, and core functionality development.
Also includes test scenes, dummy data, and other useful bits.

#### [`editor/export/`](editor/export/)
Configurations and files for exporting to platforms

#### [`editor/element/`](editor/element/)
The `element` object represents the elements of a JSON document.

#### [`editor/file/`](editor/file/)
The `file` object is used to save, load, and locate JSON files.

#### [`editor/help/`](editor/help/)
Interactive Help.

#### [`editor/history/`](editor/history/)
Edit History.

#### [`editor/user/`](editor/user/)
The `user` object loads, saves, synchronizes, and applies settings to the editor.

#### [`editor/view/`](editor/view/)
The `view` object allows a user to zoom in/out from the cursor.

---

### Level 3

*(Restructure these commands into deeper objects)*
*(TODO Make Modal (See Diagram))*

---

#### [`editor/cursor/move/`](editor/cursor/move/)
*(TODO Description)*

#### [`editor/cursor/select/`](editor/cursor/select/)
The selection, can be built up/down.
Bound to `shift+movement` by default.

---

#### [`editor/editor/input/`](editor/editor/input/)
Singleton.
Handles all input and tracks mode, signaling to the appropriate objects.
No Keybinds.
No Modes.
Selected.

#### [`editor/editor/window/`](editor/editor/window/)
The full window a user sees.

#### [`editor/editor/settings/`](editor/editor/settings/)
A Menu for changing options.

#### [`editor/editor/keybinds/`](editor/editor/keybinds/)
A Menu for changing keys.

---

#### [`editor/element/command/`](editor/element/command/)
Some action to change an element.

#### [`editor/element/elements/`](editor/element/elements/)
*(TODO Describe)*

#### [`editor/element/fields/`](editor/element/fields/)
*(TODO Describe)*

---

#### [`editor/file/find/`](editor/file/find/)
Find and open a document in the OS tree.
Also a Command, bound to `ctrl+o`.

#### [`editor/file/load/`](editor/file/load/)
Parse a file into a JSON document.
Done automatically, but documents can be reloaded from files with `F5` by default.

#### [`editor/file/save/`](editor/file/save/)
Save opened document to file in OS tree.
Also a Command, bound to `ctrl+s`.

---

#### [`editor/help/help/`](editor/help/help/)
A Big Custom UI element that each *Object* defines for itself.

#### [`editor/help/tooltip/`](editor/help/tooltip/)
A Brief Defined UI element that each *Object* defines for itself.

#### [`editor/help/command/`](editor/help/command/)
*(TODO Describe)*

---

#### [`editor/history/add/`](editor/file/add/)
Add the current document state to the file object as a step.
Deletes any following edits.
No keybinding.

#### [`editor/history/redo/`](editor/file/redo/)
Restore document to some newer state.
Bound to `ctrl+y` by default.

#### [`editor/history/undo/`](editor/file/undo/)
Restore document to some older state.
Bound to `ctrl+z` by default.

---

#### [`editor/user/default/`](editor/user/default/)
The default user settings object and menu.
No keybinding.

#### [`editor/user/create/`](editor/user/create/)
Menu and Firebase rules for creating a new user.
No keybinding.

#### [`editor/user/load/`](editor/user/load/)
Pull user settings from Firebase and apply them to the editor.
No keybinding.

#### [`editor/user/login/`](editor/user/login/)
Login menu and object.
No keybinding.

#### [`editor/user/save/`](editor/user/save/)
Push settings to Firebase.
No keybinding.

---

#### [`editor/view/grow/`](editor/view/grow/)
Lets the `view` show more of the document.
Moves the document and aligns the camera with child elements.

#### [`editor/view/mode/`](editor/view/mode/)
Lets the `view` behave differently.

#### [`editor/view/shrink/`](editor/view/shrink/)
Lets the `view` show less of the document.
Moves the document and aligns the camera with child elements.

#### [`editor/view/zoom/`](editor/view/zoom/)
Lets the `view` move closer/further to the cursor.

---

### Level 4

---

#### [`editor/cursor/move/in/`](editor/cursor/move/in/)
Move the `cursor` to the first child `element` of some `element`.
Bound to `rightarrow` by default for Vertical Distribution
and `downarrow` for Horizontal Distribution.

#### [`editor/cursor/move/next/`](editor/cursor/move/next/)
Move the `cursor` to the next peer `element` within some other `element`.
Bound to `rightarrow` by default for Horizontal Distribution
and `downarrow` for Vertical Distribution.

#### [`editor/cursor/move/out/`](editor/cursor/move/out/)
Move the `cursor` to the parent `element` of some `element`.
Bound to `leftarrow` by default for Vertical Distribution
and `uparrow` for Horizontal Distribution.

#### [`editor/cursor/move/prev/`](editor/cursor/move/prev/)
Move the `cursor` to the previous peer `element` within some other `element`.
Bound to `leftarrow` by default for Horizontal Distribution
and `uparrow` for Vertical Distribution.

---

#### [`editor/cursor/select/add/`](editor/cursor/select/add/)
*(TODO Description)*

#### [`editor/cursor/select/remove/`](editor/cursor/select/remove/)
*(TODO Description)*

---

#### [`editor/editor/window/settings/`](editor/editor/window/settings/)
Shows the gear icon at top right of screen.

#### [`editor/editor/window/user/`](editor/editor/window/user/)
Shows the user icon at top right of screen.

---

#### [`editor/element/command/apply/`](editor/element/apply/)
Finalize changes (from `enter` an element).
Bound to `ctrl+enter` by default.

#### [`editor/element/command/cancel/`](editor/element/edit/)
From `enter` an `element`, defaults to keybind `escape`.

#### [`editor/element/command/copy/`](editor/element/copy/)
Command, stores the selected `element` on `editor`.
Bound to `ctrl+c` by default.

#### [`editor/element/command/cut/`](editor/element/cut/)
Command, alias for `replace` selected element (and all children) with a single `text` object.
Also called `delete`, but is same command.
Stores recently cut object in `editor`, allows for `paste` (insertion) elsewhere.
Bound to `ctrl+x` by default, but also includes `delete`.

#### [`editor/element/command/edit/`](editor/element/edit/)
Default keybinding `enter`, edits the field of an `element`.

#### [`editor/element/command/flip/`](editor/element/flip/)
Command, switch the `element` from a Horizontal to a Vertical distribution (or vice versa).
Bound to `ctrl+\` by default.

#### [`editor/element/command/fold/`](editor/element/fold/)
Command, hide the children of the `element` and show in a reduced form.
Bound to `ctrl+[` by default.

#### [`editor/element/command/paste/`](editor/element/paste/)
Command, insert `element` adjacent to some other `element`.
Bound to `ctrl+v` by default.

#### [`editor/element/command/rename/`](editor/element/rename/)
Command, specific to members of a `dict`, allows setting of `key` field.
Bound to `ctrl+r` by default.

#### [`editor/element/command/replace/`](editor/element/replace/)
Command, replace element if `cursor` is selecting it with a different element.
Also covers insertion, creation (new).
Bound to `alt+enter` by default.

#### [`editor/element/command/unfold/`](editor/element/unfold/)
Command, hide the children of the `element` and show in a reduced form.
Bound to `ctrl+]` by default.

---

#### [`editor/element/elements/bool/`](editor/element/elements/bool/)
`True` and `False`.
Can be created on `replace` by typing `f` or `t`.

#### [`editor/element/elements/dict/`](editor/element/elements/dict/)
Key-Value mapping.
Can be created on `replace` by typing `{` or `}`.

#### [`editor/element/elements/dict-item/`](editor/element/elements/dict-item/)
Labeled element.

#### [`editor/element/elements/existential`](editor/element/elements/existential/)
`Null`.
Can be created on `replace` by confirming (no string entered).

#### [`editor/element/elements/list/`](editor/element/elements/list)
Generic grouping of elements.
Can be created on `replace` by typing `[` or `]`.

#### [`editor/element/elements/list-item/`](editor/element/elements/list-item/)
Unlabeled element.

#### [`editor/element/elements/text/`](editor/element/elements/text/)
Automatically escapes characters in text.
Can be created on `replace` by typing `'` or `"`.

---

#### [`editor/help/command/show-tooltips/](editor/help/command/show-tooltips/)
Show on-screen tooltips and explanations.
Tooltips are defined by each object.
Look for a `ITEMNAME_tooltip.tscn` file in each directory.
Default bound to `alt`.

#### [`editor/help/command/show-element-help/`](editor/help/command/show-element-help/)
Show help specific to the cursor-selected element.
Help is defined by each object.
Look for a `ITEMNAME_help.tscn` file in each directory.
Default bound to `alt+h`.

---

#### [`editor/view/grow/down/`](editor/view/grow/down/)
Add next view-element to current-view.
Command.
Bound to `ctrl+alt+downarrow` by default.

#### [`editor/view/grow/in/`](editor/view/grow/in/)
Add child cursor-element to current-view.
Command.
Bound to `ctrl+alt+leftarrow` by default.

#### [`editor/view/grow/out/`](editor/view/grow/out/)
Add parent view-element to current-view.
Command.
Bound to `ctrl+alt+rightarrow` by default.

#### [`editor/view/grow/up/`](editor/view/grow/up/)
Add previous view-element to current-view.
Command.
Bound to `ctrl+alt+uparrow` by default.

---

#### [`editor/view/mode/drag/`](editor/view/mode/drag/)
Command, makes `view` follow after the `cursor` if it goes off screen.

#### [`editor/view/mode/follow/`](editor/view/mode/follow/)
Command, makes `view` follow `cursor`.

#### [`editor/view/mode/ignore/`](editor/view/mode/ignore/)
Command, makes `view` do nothing if the `cursor` goes off screen.

---

#### [`editor/view/shrink/down/`](editor/view/shrink/down/)
Remove next view-element from current-view.
Command.
Bound to `ctrl+shift+uparrow` by default.

#### [`editor/view/shrink/in/`](editor/view/shrink/in/)
Remove child cursor-element from current-view.
Command.
Bound to `ctrl+shift+rightarrow` by default.

#### [`editor/view/shrink/out/`](editor/view/shrink/out/)
Remove parent view-element from current-view.
Command.
Bound to `ctrl+shift+leftarrow` by default.

#### [`editor/view/shrink/up/`](editor/view/shrink/up/)
Remove previous view-element from current-view.
Command.
Bound to `ctrl+shift+downarrow` by default.

---

#### [`editor/view/zoom/in/`](editor/view/zoom/in/)
Command, bound to `ctrl+=` by default, moves the `view` towards the `cursor`, towards the right of the document, deeper into the document.

#### [`editor/view/zoom/out/`](editor/view/zoom/out/)
Command, bound to `ctrl+-` by default, moves the `view` away from the `cursor`, towards the left of the document, away from the document leaves.

---

### Level 5

---

#### [`editor/element/elements/dict/insert/`](editor/element/elements/dict/insert/)
*(TODO Description)*

#### [`editor/element/elements/list/insert-after/`](editor/element/elements/insert-after/)
*(TODO Description)*

#### [`editor/element/elements/list/insert-before/`](editor/element/elements/insert-before/)
*(TODO Description)*

#### [`editor/element/elements/list/move-next/`](editor/element/elements/list/move-next/)
*(TODO Description)*

#### [`editor/element/elements/list/move-prev/`](editor/element/elements/list/move-prev/)
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
(Mouse, Keyboard, Touch)
Where to put these in the project?
On the individual features themselves?
Should some special `command` object exist for handling all of these input methods?

### Modal Interface
Similar to [Spacemacs](https://en.wikipedia.org/wiki/Spacemacs) or [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor)), InStructEd uses modal keys instead of `ctrl` keys.
*(Need to revise `ARCH.md` to describe this interface appropriately)*

### Keybind Map
- `1 2 3 4 5 6 7 8 9 0`: Jump to Bookmark
- `ctrl+ 1 2 3 4 5 6 7 8 9 0`: Set Bookmark
- `leftarrow rightarrow uparrow downarrow`: Move Cursor
- `f`: Find

### Errors in File
Will not be addressed.
Resolution strategies are difficult and require a high degree of reflection.

### Noncompletion
Not all of the features here can be completed in time.
Look to this document as more of an ideal than as an actual reflection of the current project.

### Render Settings
Need to reduce render rate from 60 FPS down to 6 FPS.

### Code Map Item Features
- **Level**       (Parent Subsection with Number)
- **Path**        (Folders to Item)
- **Link**        (Link to Project Source)
- **Keybind**     (If None say "No Keybinds.")
- **Mode**        (If None say "No Modes.")
- **Type**        (Singleton, Command, Producer, Networking, Interface, Holder)
- **Description** (Short Plain English Text)
- **Status**      (Rejected, Selected, Completed)

### Example Code Map Feature Data
```yaml
level:        3
path:         editor/editor/input
link:         editor/editor/input
keybind:      No
mode:         []
type:         Singleton
description:  Handles all input and tracks mode, signaling to the appropriate objects.
status:       Selected
```

### Example Code Map Feature
> ### Level 3
> #### [`editor/editor/input/`](editor/editor/input/)
> Singleton.
> Handles all input and tracks mode, signaling to the appropriate objects.
> No Keybinds.
> No Modes.
> Selected.

### Standard Folder Contents
(Using [Commented](https://yaml.org/spec/1.2/spec.html#id2780069) [Typed](https://yaml.org/spec/1.2/spec.html#id2761292) [YAML](https://en.wikipedia.org/wiki/YAML) Notation to refer to [Directory Contents](https://en.wikipedia.org/wiki/Directory_(computing)))
```yaml
item-parent/:         !Dir    # Items should be relative to some other items.
                              # This gives them context and meaning.
  item/:              !Dir    # Note the term "item" is used throughout the various files.
                              # This allows for the Class Browser to clearly identify
                              # class files, even without the folder path.
    item-child/:      !Dir    # Items should be relative to some other items
                              # These should be either SubTypes of the item
                              # (Such as `elements` under `element`)
                              # Or be Aspects (Such as `commands`) of the item.
    item.gd:          !Class  # The class is simply the name (WITH UNDERSCORES not DASHES). 
                              # Contains Comments and documentation, 
                              # as well as callback methods.
    item_action.ogg:  !Audio  # For juicy feedback to the user, sounds might be used
                              # Animation (Tween) Tracks can also be included.
    item_icon.png:    !Image  # Icons, Images, Etcetera include picture files
                              # Also includes other data formats (GIF, SVG, MOV)
    item.tscn:        !Object # The Data Layout (other objects) as a plaintext serialization
                              # Can be inherited, composed, and instantiated like classes.
                              # Describes LAYOUT as opposed to FUNCTIONALITY.
                              # Also contains the signal connections and variable data.
    item_tip.tscn:    !Tip    # From `help/tooltip`, is an image, text, and keybind 
                              # information for this object. 
    item_help.tscn:   !Help   # From `help/help`, is a custom `Container` with icons and
                              # text describing how a thing can be interacted with
```

### Object Map
```yaml
editor:
  cursor:
    move:
      in:
      next:
      out:
      prev:
    select:
      add:
      remove:
  editor:
    window:
      settings:
      user:
  element:
    command:
      apply:
      cancel:
      copy:
      cut:
      edit:
      flip:
      fold:
      paste:
      rename:
      replace:
      unfold:
    elements:
      bool:
      dict:
        insert:
      dict-item:
      existential:
      list:
        insert-after:
        insert-before:
        move-next:
        move-prev:
      list-item:
      text:
  file:
    find:
    load:
    save:
  help:
    tooltip:
    command:
      show-tooltips:
      show-element-help:
  history:
    add:
    redo:
    undo:
  user:
    default:
    create:
    load:
    login:
    save:
    settings:
  view:
    grow:
      down:
      in:
      out:
      up:
    mode:
      drag:
      follow:
      ignore:
    shrink:
      down:
      in:
      out:
      up:
    zoom:
      in:
      out:
```

### Syncing Documents
Is a lot of work. Only synching the most basic of user configurations precisely to avoid this problem. Documents themselves are not tricky, but incremental, small edits to a large document is tricky.

See the networking libraries used by Google Keep as a simple example of the involved complexity.

### Semantics of Editing
Editors and editor workflows while expressing semantics between files.
Semantics exist more as links within expressions within files, linking to expressions within other files.
The expressions themselves indicate the ways in which those links are meant to be interpreted.
The puzzlement of creating spaces for the self to do work in.
Task of efficiently typing text in.
Godot recognizes the importance of serializing things to files and folders.
Folders are not enough to express semantics and no semantic linking means at best only limited semantics can be captured with folders of folders.
The difficulty of limiting views and indicating uses of files.
How to link documents together in this space?
Maybe focusing on a common data structure first would be better.
Some basic manipulations to that data structure.
Just work our way up from there.
Google Keep was smart to not allow any structuring of its inputs.
Programming semantics includes Intrinsics, Code that does stuff, and Extrinsics, Docs about code

### Where to put Icons Sounds and Fonts
(Godot Project Resources)
On individual item's folders?
Or in a generic resources location?
For now, just putting them in `editor/font/font-pack/` and `editor/icon/icon-pack/`

### Accepting Incompleteness
Really need to just move on.
I lack a thorough, simple vocabulary for describing a cursor traversing a JSON document.
Mathematically representing JSON document transformations is also difficult, less so for execution, moreso for design of interface.
(Example, what should "demote" do in the context of a JSON document?)
Editing a YAML document in a text editor is significantly semantically lighter (less concern for what "demote" means).
This project was poorly thought-out.

### Cursor is Really a Visitor
I realized this when creating a mock UI.
(exp_hbox_3).
The cursor itself does not really exist.
Instead it is some invasive pile of components that inserts itself into some subject element.
This was unexpected.

### Too Many Buttons
Harms the design overall.
Had no idea there would be so man clickable things.

### Icons Need Lots of Adjustment
Just realized how little I like these packs.
Also how much an icon is itself a mirror of the actual structure of a thing.
JSON is a very fundamental the structure, and this is difficult to represent with icons.
Describing edit operations in terms of visual iconography is very incomplete.
An APL equivalent icon pack for talking about common mathematic transformations would be nice.

### Cursor is Actually Several Different Editors Tied Into One
`dict`, `list`, `dictlist`, `listdict`, and others.
Do we want to offer list-item controls?
How far should the resolution of the cursor extend?
(Not the *image* resolution of the cursor, but the *sophistication* resolution of the cursor, just how much should it support?)
(And how far *into* an element should a cursor extend its controls?)

### Customizable Cursor Would be nice
Let the user decide what the "resolution" of the cursor should be.
This degree of polymorphism is not feasible.

### Acknowledging Problem of Experiment Folder
this is where a majority of work is right now

### Where does the Title of an Inspected dict-item Belong
(See `exp_hbox_3.tscn`.)
Does the "metadata" label belong with the body? (inside the controls)
Or does it belong separate from the body? (outside the controls)
If we promote the items, they are distinct from the label.

### Correctly Distinguishing Between dict and dictlist
Consider that a `dictlisttree` is xml.
We need to indicate the difference cleanly
*(Resolve later)*

### Better Ways of Geometrically Indicating Association
Insert some symbol?
Use a spacer?
Trying the chevron.
(See `exp_hbox_3.tscn`.)

### Indicating Lists
Use bullet icon? (per list item)
Use dots icon? (per list)

### Terribly Overcomplicated Ideas
Automatically aligning adjacent items?
(Pair Keys, make nicer appearance).
(Too much work for current scope).

### Three Different Kinds of Zooms
**Screen Zoom** (Distance from canvas of all elements (pixels)).
**Relational Zoom** (semantic distance between elements (grandparent, parent, self, child)).
**Elemental Zoom** (distance between rendered elements (top, left, right, down)).

### Where to Put Type Icons
On the **containers** or on the **members**?
Containers: `dict`, `list`.
Members: `dictitem`, `listitem`.
Problems with containers: `dict`s cannot distinguish between `keys` and `values` if the association symbol is dropped.
If the association symbol is used, there is no need to include a `dict` container icon.
Problem with members: each `listitem` must now be enumerated, and this may not make sense (consider that borders imply things belong to a collection).
A solution: identify `dictitems` but not `dicts` and identify `lists` but not `listitems`.
Solution problems: complex data structures (such as `dictlisttree`) may become unreadable (lack of clarity on origin of list element - which level does it correspond to?)

### Naming Cursor Elements Better
**Cursor Inject** (`ci`).
**Cursor Wrapper** (`cw`).
**Cursor Wrapper Inner** (`cwi`).
**Cursor Wrapper Outer** (`cwo`).

### Naming list dict Elements Better 
List should have `"list" (icon)/"members"/member`.
Dict should have `"map"/"pair" (icon)/member`.

### Listing Out all the Possible Cursor Variations
The current configuration (`hbox4.tscn`) is unacceptably difficult to implement.
Though the concept of cursors-within-cursors is fascinating and worth exploring.
This is underspecified and we will have a very hard time implementing it.
The current configuration is a simultaneous children-elements interaction (note blue icons on left of dictionary items) and current-element interaction (Framing around window).
Some controls are also missing (fold, unfold, etc) and there are questions about where these more code-browsing features should be placed, as opposed to these edit-heavy controls.

### Do We Really Need List Identifiers
It should be pretty apparent from the nesting of elements that things are lists.
If we were rendering without boxes, we might then need glyphs to indicate such.
Do we need bounding boxes around maps and lists then?
Again, it should be relatively obvious that some structure is present.
And yet, consider single-item maps and single-item lists.
These would just appear as single-elements and that may be hazardous.
Also, how to identify empty elements?

### Lack of Responsiveness
This UI implementation does not scale with screen changes at all.

### These Technical Points Should be Issues not Subsections
Use the GitHub issue tracker instead of these sections in a markdown file.

### Lack of Camera Abstraction
Really need some kind of stand-in for a camera (and the associated/expected motions).
Use a virtual camera to jump the view to any double-clicked item.
Also bind `ctrl+=` and `ctrl+-` to zooming in/out.

### Assembling Document Abstractions Over Time
Consider the problems of needing to know the path to an element whilst it is being worked on.
This is one of the primary concerns when editing a large, long, deeply nested JSON document.
Consider that this interface does not really address any of those concerns.
Could be solved through highlighting, etcetera.
but also need to worry about how `dicts` and `lists` relate to one another.
Consider the problem of `dictlisttree`.
This is a composition of `lists` within `dicts` within `lists`.
Consider that exclusively using container-icons or exclusively using item-icons can help to resolve this ambiguity.
But currently neither is done.

### Lack of Consistent Vocabulary
Should really say "map" instead of "dict".
There are numerous other inconsistencies.
If time permits, resolve this.
And in future projects, add a `VOCAB.md` file to prevent this.

### Controls to Place on or Near an Element
- Expand (move and adjust view to this object
- Shrink (opposite of expand)
- Kill/Clear
- Cancel/Deselect
- Select
- Save/Exit
- *(MISSING)*

### Element Object Design
Expand to fill parent container.
Center all contents
Randomly choose `vbox` or `hbox` on `init` if not set.

### Element Object Semantics
Elements, Labels, Bodies, Values, Structs.
**Element** (HVBox, Center) organizes other nodes.
**Label** (Label) identifies nodes in `dicts`.
Set name to `$LABEL` if it exists.
**Body** (Any (value, struct)) for key:value pairs or listitems.
**Value** (Label) for string, int, float within a struct.
Set node name to `$VALUE` if it exists.
**Struct** (HBox, VBox) for in-body organization.
Set node name to `$LABEL` if it exists.

### Element Holders (list, dict) and Automatic Insertion Handling
**Creating a Holder** (put inserting element into holder).
**Inserting a Minidict** (lone key:value pair).
**Ordering Holders** (list rememebers, dict order alphabetically.

### element features
`func get_string`  
`func action_`  
*(MISSING)*  


