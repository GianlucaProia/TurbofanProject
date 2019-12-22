package com.component.fan.Fan;

import com.air.flow.AirFlow;
import com.component.blade.Blade;

public class Fan {

	private Blade blade;
	private int numberBlades;
	
	private AirFlow airFlowIn; // In uscita dalla presa dinamica... 
	private AirFlow airFlowFirstOut; // Flusso interno a tutti i componenti...
	private AirFlow airFlowSecondOut; // Flusso esterno ai componenti...
	
	private double BPR;
	
	private double omega;
	private double etaMeccanico;
	private double etaAdiabatico;
	
	private double betaFan;
	
	
}
