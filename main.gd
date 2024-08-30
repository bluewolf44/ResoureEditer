@tool
extends EditorPlugin

var display

func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	display = preload("res://addons/resoure_editer/Display.tscn").instantiate()
	
	var button = add_control_to_bottom_panel(display,"Resoure Editer")
	
	button.pressed.connect(display.on_open)
	

func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_control_from_bottom_panel(display)
	
	display.free()
