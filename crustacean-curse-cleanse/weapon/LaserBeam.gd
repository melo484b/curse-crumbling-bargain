extends Line2D


var can_fire: bool = true
var target: Vector2 = Vector2()

onready var cast: RayCast2D = $RayCast2D
onready var particles: Particles2D = $LaserParticles
onready var hit_area: Area2D = $HitArea


func _unhandled_input(_event):
	if Input.is_action_just_pressed("attack"):
		fire()


func _ready() -> void:
	pass


func fire() -> void:
	if can_fire:
		can_fire = false
		check_for_collision()
		add_point(target)
		particles.position = target
		hit_area.position = target
		hit_area.visible = true
		toggle_particles()
		yield(get_tree().create_timer(0.2), "timeout")
		hit_area.visible = false
		can_fire = true
		toggle_particles()
		remove_point(1)


func check_for_collision() -> void:
	target = get_local_mouse_position()
	cast.cast_to = target
	if cast.is_colliding():
		target = cast.get_collision_point()
	
	
func toggle_particles() -> void:
	if particles.visible:
		particles.visible = false
	else:
		particles.visible = true


func _on_HitArea_area_entered(area):
	hit_area.visible = false
