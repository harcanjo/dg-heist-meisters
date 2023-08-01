extends CanvasModulate

const DARK = Color("0f1d53")
const NIGHTVISION = Color("2bc92b")

func _ready():
	add_to_group("interface")
	color = DARK

func NightVision_mode():
	color = NIGHTVISION
	$AudioStreamPlayer2D.stream = load(Global.nightvision_on_sfx)
	play_sfx()

func DarkVision_mode():
	color = DARK
	$AudioStreamPlayer2D.stream = load(Global.nightvision_off_sfx)
	play_sfx()
	
func play_sfx():
	$AudioStreamPlayer2D.play()









