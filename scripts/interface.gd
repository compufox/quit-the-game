extends Control

onready var popup: WindowDialog = $popup


# Called when the node enters the scene tree for the first time.
func _ready():
	popup.popup_centered()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_popup_hide():
	var vp = get_tree().root.get_viewport()
	var new_x = randi() % (vp.size.x - popup.rect_size.x) as int
	var new_y = randi() % (vp.size.y - popup.rect_size.y) as int
	popup.rect_position = Vector2(new_x, new_y)
	
	popup.popup()


func _on_btn_no_pressed():
	# should display a thing and then quit
	get_tree().quit()
	pass # Replace with function body.
