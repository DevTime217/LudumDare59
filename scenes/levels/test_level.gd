extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $Button.get_transform() == $Player.get_transform():
		for node in get_tree().get_nodes_in_group("Door"):
			node.visible = false
			node.get_node("CollisionShape2D").disabled = true
	
	if $Exit.get_transform() == $Player.get_transform():
		get_tree().change_scene_to_file("res://scenes/ui/main_menu.tscn")
	
