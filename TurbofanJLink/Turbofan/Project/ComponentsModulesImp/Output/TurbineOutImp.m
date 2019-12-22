(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`TurbineOutputImp`",
{
"Turbofan`Project`PureMathFunctions`CycleFunctions`"
}
]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	(* ============================================================================= *)
	(* Turbina del compressore *)
	CalculateToutCompressorTurbine[combustorObj_,compressorObj_,turbineObj_]:=Module[{compTurbineTout},
	 	compTurbineTout=CalculateToutCompressorTurbine[
	 		compressorObj@getAirFlowIn[]@getT[],
	 		compressorObj@getAirFlowOut[]@getT[],
	 		compressorObj@getAirflowOut[]@getMassFlowRate[],
	 		compressorObj@getEtaMecc[],
	 		turbineObj@getEtaMecc[],
	 		combustorObj@getAirFlowout[]@getFuelMassFlowRate[],
	 		turbineObj@getAirFlowIn[]@getT[]
	 	];   
	   turbineObj@getAirFlowOut[]@setT[compTurbineTout]; 
	]

	CalculatePoutCompressorTurbine[turbineObj_]:=Module[{compTurbinePout},
		compTurbinePout=CalculatePoutCompressorTurbine[
		 	turbineObj@getAirFlowIn[]@getP[],
		 	turbineObj@getAirFlowIn[]@getT[],
		 	turbineObj@getAirFlowOut[]@getT[],
		 	turbineObj@getEtaAdiabatic[],
		 	turbineObj@getGamma[]   
		];
		turbineObj@getAirFlowOut[]@setP[compTurbinePout];
	]

	(* ============================================================================= *)	
	(* Turbina del fan *)
	 CalculateToutFanTurbine[fanObj_,compressorObj_,combustorObj_,turbineFanObj_,turbineCompObj_]:=Module[{fanTurbineTout},
		fanTurbineTout=ToutFanTurbine[
			fanObj@getBPR[],
			fanObj@getAirFlowOut[]@getT[],
			fanObj@getAirFlowIn[]@getT[],
			compressorObj@getAirFlowOut[]@getT[],
			compressorObj@getEtaMecc[],
			turbineCompObj@getAirFlowIn[]@getT[],
			combustorObj@getAplha[]			
		];
		turbineFanObj@getAirFlowout[]@setT[fanTurbineTout];	
	]	
	
	CalculatePoutFanTurbine[turbineFanObj_]:=Module[{fanTurbinePout},
			fanTurbinePout=PoutFanTurbine[
				turbineFanObj@getAirFlowIn[]@getP[],
				turbineFanObj@getAirFlowIn[]@getT[],
				turbineFanObj@getAirFlowOut[]@getT[],
				turbineFanObj@getEtaAdiabatic[],
				turbineFanObj@getAirFlowIn[]@getGamma[]
			];
		turbineFanObj@getAirFlowOut[]@setP[fanTurbinePout];
	]

End[] (* End Private Context *)

EndPackage[]