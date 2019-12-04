package com.component.mixer;

import com.air.flow.AirFlow;

public class Mixer {

	private AirFlow airFlowIn1;
	private AirFlow airFlowIn2;
	private AirFlow airFlowOut;
	
	public Mixer() {
		
	}
	
	public Mixer(AirFlow airFlowIn1, AirFlow airFlowIn2) {
		this.airFlowIn1 = airFlowIn1;
		this.airFlowIn2 = airFlowIn2;
	}

	// Metodi get e set...
	public AirFlow getAirFlowIn1() {
		return airFlowIn1;
	}

	public void setAirFlowIn1(AirFlow airFlowIn1) {
		this.airFlowIn1 = airFlowIn1;
	}

	public AirFlow getAirFlowIn2() {
		return airFlowIn2;
	}

	public void setAirFlowIn2(AirFlow airFlowIn2) {
		this.airFlowIn2 = airFlowIn2;
	}

	public AirFlow getAirFlowOut() {
		return airFlowOut;
	}

	public void setAirFlowOut(AirFlow airFlowOut) {
		this.airFlowOut = airFlowOut;
	}
	
	
}
