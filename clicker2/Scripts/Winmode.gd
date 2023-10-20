extends OptionButton

func _ready():
	get_popup().add_item("Exclusive Fullscreen")
	get_popup().add_item("Fullscreen")
	get_popup().add_item("Windowed")
	get_popup().connect("id_pressed",self.item_pressed)

func item_pressed(id):
	if get_popup().get_item_text(id) == "Exclusive Fullscreen":
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	if get_popup().get_item_text(id) == "Fullscreen":
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	if get_popup().get_item_text(id) == "Windowed":
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

func _process(delta):
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN:
		text = "Exclusive Fullscreen"
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		text = "Fullscreen"
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED:
		text = "Windowed"

