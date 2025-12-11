extends State


@export var flee_range : float = 6.0

func enter():
	super.enter()
	controller.is_running = true
	controller.look_at_player = false
	flee()

func flee():
	var pos = controller.position + Vector3.BACK * flee_range
	controller.move_to_position(pos)

func exit():
	super.exit()
	controller.is_running = false
	controller.look_at_player = false

func navigation_complete():
	state_machine.change_state("Wander")
