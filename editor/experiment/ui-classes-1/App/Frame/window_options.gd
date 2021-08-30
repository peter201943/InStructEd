extends Control

# Main Window Options

export(PackedScene) var help_window
export(PackedScene) var settings_window
export(PackedScene) var controls_window
export(PackedScene) var profile_window
export(PackedScene) var file_window

func open_help():
  var help = help_window.instance()
  add_child(help)
  
func open_settings():
  var settings = settings_window.instance()
  add_child(settings)

func open_controls():
  var controls = controls_window.instance()
  add_child(controls)

func open_profile():
  var profile = profile_window.instance()
  add_child(profile)

func open_files():
  var files = file_window.instance()
  add_child(files)

func open_export():
  pass

func zoom_full():
  print("zoom reset")
  pass

func zoom_in():
  print("zoom in")
  pass

func zoom_out():
  print("zoom out")
  pass

func pan_up():
  print("pan up")
  pass

func pan_down():
  print("pan down")
  pass

func pan_left():
  print("pan left")
  pass

func pan_right():
  print("pan right")
  pass
