extends Tree

var icon = preload("res://icon.png")

func _ready():
  print("running tree construction")
  var root = create_item()
  set_hide_root(true)
  for i in range(5):
    var next_child = create_item(root)
    next_child.set_text(0,"child"+str(i))
    for j in range(4):
      var next_grand_child = create_item(next_child)
      next_grand_child.set_text(0, "grandchild"+str(j))
      next_grand_child.set_tooltip(0,"Help")
      next_grand_child.set_icon(0,icon)
      next_grand_child.set_icon_max_width(0,20)
      next_grand_child.add_button(0,icon,-1,false,"A Button!")

