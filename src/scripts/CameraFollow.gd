extends Camera

export(NodePath) var cameraPivotPath
export(NodePath) var objectToFollowPath
onready var cameraPivot = get_node(cameraPivotPath)
onready var objectToFollow = get_node(objectToFollowPath)

export var camAccel = 2 # Speed With Which The Camera Follows Up The Player (Not Need When Not using the `linear_interpolate` function

func _process(delta):
	cameraPivot.translation = cameraPivot.translation.linear_interpolate(objectToFollow.translation, delta * camAccel)
	#cameraPivot.translation = self.translation # Un-Comment This & Comment Above if you want camera to just follow the player without any smooth follow-up
