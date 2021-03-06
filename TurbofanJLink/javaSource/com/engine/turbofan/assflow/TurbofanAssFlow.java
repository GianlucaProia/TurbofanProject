package com.engine.turbofan.assflow;

import com.component.combustioncamber.CombustionCamber;
import com.component.compressor.Compressor;
import com.component.fan.Fan.Fan;
import com.component.inlet.Inlet;
import com.component.mixer.Mixer;
import com.component.nozzle.Nozzle;
import com.component.turbine.Turbine;

public class TurbofanAssFlow {

	private Inlet inlet;
	private Fan fan;
	private Compressor compressor;
	private CombustionCamber combustionCamber;
	private Turbine turbine;
	private Mixer mixer;
	private Nozzle nozzle;
	
	// Costruttore...
	public TurbofanAssFlow(Inlet inlet, Fan fan, Compressor compressor, CombustionCamber combustionCamber,
			Turbine turbine,Mixer mixer, Nozzle nozzle) {
		this.inlet = inlet;
		this.fan = fan;
		this.compressor = compressor;
		this.combustionCamber = combustionCamber;
		this.turbine = turbine;
		this.mixer = mixer;
		this.nozzle = nozzle;
	}
	
	
}
