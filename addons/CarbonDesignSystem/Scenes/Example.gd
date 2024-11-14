extends Control

@onready var tree: Tree = %Tree
@onready var progress_bar_animation: AnimationPlayer = %ProgressBarAnimation

func _ready() -> void:
	var root: TreeItem = tree.create_item()
	root.set_text(0, "Root")
	var child: TreeItem = tree.create_item(root)
	child.set_text(0, "Item1")
	tree.create_item(child).set_text(0, "SubChild1")
	tree.create_item(child).set_text(0, "SubChild2")
	tree.create_item(root).set_text(0, "Item2")
	
	progress_bar_animation.play("Run")
