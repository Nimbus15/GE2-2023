extends SteeringBehavior

var pathIndex = 0
var path:Path = 
var waypointSeekDistance = 2



func calculate():
	var target = path.transform.xform(path.get_curve().get_point_position(pathIndex))
	var dist = global_transform.origin.distance_to(target)
	if dist < waypointSeekDistance:
		pathIndex = (pathIndex + 1) % path.get_curve().get_point_count()
	return seek(path.transform.xform(path.get_curve().get_point_position(pathIndex)))



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
