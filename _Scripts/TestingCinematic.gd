extends Node

@export var dialogue_box : DialogueBox


func init_cinematic() -> void:
	dialogue_box.init_dialogue("KING_001","Kingpin")
	await dialogue_box.dialogue_end
	await input_next()
	dialogue_box.init_dialogue("AI_001","Artificial")
	await dialogue_box.dialogue_end
	await input_next()
	dialogue_box.init_dialogue("KING_002","Kingpin")
	await dialogue_box.dialogue_end
	await input_next()
	dialogue_box.init_dialogue("KING_003","Kingpin")
	await dialogue_box.dialogue_end
	await input_next()
	dialogue_box.init_dialogue("KING_004","Kingpin")
	await dialogue_box.dialogue_end
	await input_next()
	dialogue_box.init_dialogue("AI_002","Artificial")
	await dialogue_box.dialogue_end
	await input_next()
	dialogue_box.init_dialogue("KING_005","Kingpin")
	await dialogue_box.dialogue_end
	await input_next()
	dialogue_box.set_visible(false)

func input_next() -> void:
	while true:
		await get_tree().process_frame
		if Input.is_key_pressed(KEY_E):
			break
