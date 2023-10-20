extends ColorPicker
# Called when the node enters the scene tree for the first time.


const settings = "Resource/cof.VIX"
signal colorchange
func _ready():
	conload()
	await colorchange
	var red = color.r8
	var green = color.g8
	var blue = color.b8

func _on_color_changed(color):
	$"../../../../Build/BG".modulate = color


func _process(delta):
	await _on_color_changed
	var red = color.r8
	var green = color.g8
	var blue = color.b8
	
	
func consave():
	var red = color.r8
	var green = color.g8
	var blue = color.b8
	var f : FileAccess = FileAccess.open(settings, FileAccess.WRITE)
	f.store_var(red)
	f.store_var(green)
	f.store_var(blue)
	
func conload():
	var red = color.r8
	var green = color.g8
	var blue = color.b8
	var f : FileAccess = FileAccess.open(settings, FileAccess.READ)
	if(f):
		color.r8 = f.get_var(red)
		color.g8 = f.get_var(green)
		color.b8 = f.get_var(blue)
		
		emit_signal("colorchange")


func _on_colorchange():
	$"../../../../Build/BG".modulate = color


func _on_buttons_savetime():
	consave()
