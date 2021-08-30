extends Control

class_name ExpWindowFrame

func _input(event):
  if event.is_action_pressed("ui_cancel"):
    close()

func close():
  queue_free()
