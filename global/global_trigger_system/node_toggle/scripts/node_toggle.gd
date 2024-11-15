extends Node2D

enum Action {
	HIDE,
	SHOW
}

@export var action : Action
@export var trigger : Requirement

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func trigger_changed(key : String, value : bool) -> void:
	if key == trigger.key :
		
		var parent : Node2D = get_parent() 
		if parent == null :
			printerr(name, "Trigger Changed, Missing parent")
			return
		
		match action:
			Action.HIDE:
				parent.hide()
				parent.process_mode = Node.PROCESS_MODE_DISABLED
			Action.SHOW:
				parent.show()
				parent.process_mode = Node.PROCESS_MODE_ALWAYS
				
