
/**

	A seeker head will have code that scans the area infront of the missile to naturally acquire a target, be it chaff, flare, the intended aircraft, or some other unfortunate aircraft.

	A seeker head will also combine the logic of having data-link capabilities for mid-course updates so it doesn't need to setMissileTarget too early
	This is to simulate behavior of stuff like AIM-120 where the missile is guided via data-link before pitbull and it turns on its own radar to acquire the target / new targets

	It will also be responsible for setMissileTarget


 */