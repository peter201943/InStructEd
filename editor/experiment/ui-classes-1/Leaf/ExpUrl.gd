extends LinkButton

# Opens the Client Browser
# 
# Opening a Web Page from Godot
# https://www.youtube.com/watch?v=S9tJhpMi5RY
# 
# NOTE! Requires `https://` before url

func _on_ExpUrl_pressed():
  OS.shell_open(text)
