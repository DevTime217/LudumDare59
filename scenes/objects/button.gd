extends StaticBody2D

var button_position = $".".get_transform()

func _ready() -> void:
	if button_position == get_tree().get_first_node_in_group("Player").get_transform():
		for node in get_tree().get_nodes_in_group("Door"):
			node.visible = false
