extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	conectar_nodos()
	get_title().finish.connect(get_first_node().create_animation)
	await get_tree().create_timer(1.0).timeout
	init_chain()
	
func awaitB():
	await get_tree().create_timer(1.0).timeout
	
func init_chain():
	get_title().create_animation()

func conectar_nodos():
	for nodosDesaparecerI in range(3, get_children().size() - 1):
		var nodo = get_children()[nodosDesaparecerI]
		var nodoSiguiente = get_children()[nodosDesaparecerI + 1]
		nodo.finish.connect(nodoSiguiente.create_animation)

func get_first_node():
	return $DesaparecerContainer
# Called every frame. 'delta' is the elapsed time since the previous frame.

func get_title():
	return $"GameFestival(14)"

func _process(delta):
	if Input.is_key_pressed(KEY_1):
		$DesaparecerContainer/TextContainer/Txt1/ColorRect.visible = true
		$DesaparecerContainer/TextContainer.animation_hover()
		$DesaparecerContainer2.visible = false
	if Input.is_key_pressed(KEY_2):
		$DesaparecerContainer3/TextContainer2/Txt2/ColorRect2.visible = true
		$DesaparecerContainer3/TextContainer2.animation_hover()
		$DesaparecerContainer2.visible = false
		$DesaparecerContainer3/TextContainer3.visible = false
		
		
	if Input.is_key_pressed(KEY_3):
		$DesaparecerContainer3/TextContainer3/Txt3/ColorRect3.visible = true
		$DesaparecerContainer3/TextContainer3.animation_hover()
		$DesaparecerContainer2.visible = false
		$DesaparecerContainer3/TextContainer2.visible = false
		
	if Input.is_key_pressed(KEY_4):
		$DesaparecerContainer/TextContainer/Txt1/ColorRect.visible = false
		$DesaparecerContainer/TextContainer.animation_off_hover()
		$DesaparecerContainer2.visible = true
		
	if Input.is_key_pressed(KEY_5):
		$DesaparecerContainer3/TextContainer2/Txt2/ColorRect2.visible = false
		$DesaparecerContainer3/TextContainer2.animation_off_hover()
		$DesaparecerContainer2.visible = true
		$DesaparecerContainer3/TextContainer3.visible = true
		
	if Input.is_key_pressed(KEY_6):
		$DesaparecerContainer3/TextContainer3/Txt3/ColorRect3.visible = false
		$DesaparecerContainer3/TextContainer3.animation_off_hover()
		$DesaparecerContainer2.visible = true
		$DesaparecerContainer3/TextContainer2.visible = true
		
	
