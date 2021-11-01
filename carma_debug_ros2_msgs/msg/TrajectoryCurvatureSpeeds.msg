# TrajectoryCurvatureSpeeds.msg

# This message contains the computed curvatures and expected speed limits along the specified trajectory based on the provided acceleration limit
# The initial intended use case is as a debug message for inlane-cruising
# The header of the message can be found in the trajectroy_plan.header field. 

# The trajectory the provided data corresponds too
carma_planning_msgs/TrajectoryPlan trajectory_plan

# The computed curvatures of lane for the provided trajectroy at each point.
# This array should have the same length as the trajectory_plan
float64[] curvatures

# The computed speed limits based on lateral accel at each curvature point
float64[] speed_limits

# The planned velocity profile of the provided trajectory before it was converted to timestamps
float64[] velocity_profile

# The computed tangents of the points in the trajectory plan
float64[] tangent_headings

# The relative downtracks between points in the trajectory plan
float64[] relative_downtrack

# The lateral acceleration limit used to generate the plan
float64 lat_accel_limit

# The longitudinal acceleration limit used to generate the plan
float64 lon_accel_limit

# Starting state for trajectory planning that resulted in the trajectory
carma_planning_msgs/VehicleState starting_state