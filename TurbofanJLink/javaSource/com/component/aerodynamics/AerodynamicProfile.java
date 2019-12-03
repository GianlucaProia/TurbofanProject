package com.component.aerodynamics;

import com.air.flow.AirFlow;
import com.air.flow.VelocityTriangle;


public class AerodynamicProfile {

	// Flussi di ingresso e uscita sul profilo...
	private AirFlow airFlowIn;
	private AirFlow airFlowOut;
	
	// Triangolo di velocit�...
	private VelocityTriangle velocityTriangleMeanRadiusIn;
	private VelocityTriangle velocityTriangleMeanRadiusOut;
	
	private double Chord;
	
	private double[] completeProfile;
	private double[] topProfile;
	private double[] bottomProfile;
	
	private double alpha;
	private double stagingAngle;
	
	private double U;
	private double omega;
	
	private double reactionDegree;
	
	private double radius;
	
	// Caratteristiche del rotore...
	private double sigma;
	
	private double[] listSigmaAlongRadius;
	
	
}
