/**
	Zero-Effort-Miss Guidance (Optimal Control Theory)

	The zero effort miss happens at Time-To-Go = 0s and would be when both the pursuer and target's paths would intersect.
	The ZEM is the vector from the target's position at Tgo = 0 subtracted by the pursuer's position at Tgo = 0.
	In theory, if the zero effort miss vector is 0, then the pursuer and the target will be on a collision course.

	Mathematically, simplistic ZEMG and augmented proportional navigation are equal. It is the further supersets of ZEMG that enhance the control law to be more optimal than Pro Nav.
	
	This guidance control law requires access to kinematic information and the resulting acceleration command is naturally perpendicular to the Line-Of-Sight.
	In real life, ZEMG and other supersets of pro nav are used by the most advanced missiles, typically seen on missiles supported by a radar which gives access to kinematic information easily.

	Acceleration = NC * ZEM / Tgo^2 + ( NC / 2 ) * at

	NC = Navigational Constant (3-5)
	Tgo = Time to go. The time to go until both would intercept (and consequently miss) if none would maneuver. Rtm / Vc
	ZEM = Zero effort miss vector. ZEM = LOS unit vector * Tgo^2 * LOSr

 */
 IADS_ZEMG = {
	
 };