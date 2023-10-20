extends TextureRect

func _ready():
	hide()


func _process(_delta):
	position = get_global_mouse_position() + Vector2(-200, 45)
