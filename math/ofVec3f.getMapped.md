Return a new 'ofVec3f' calculated by copying this vector and then mapping from its default coordinate system -- origin (0,0,0), X direction (1,0,0), Y direction (0,1,0), Z direction (0,0,1) -- to a new coordinate system defined with origin at 'origin', X direction 'vx', and Y direction 'vy', and Z direction 'vz'.

*In most cases you want 'vx', 'vy', and 'vz' to be perpendicular and of unit length; if they are not perpendicular you will have shearing as part of the mapping, and if they are not of unit length you will have scaling as part of the mapping.*
