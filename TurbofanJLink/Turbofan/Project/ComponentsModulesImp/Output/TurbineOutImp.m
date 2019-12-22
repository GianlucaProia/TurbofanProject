(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`TurbineOutputImp`",
{
"Turbofan`Project`PureMathFunctions`CycleFunctions`"
}
]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

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
	
	(* Turbina del fan *)
	CalculateToutFanTurbine[combustorObj_,compressorObj_,fanObj_,fanTurbineObj_]:=Module[{},
		fanTurbineTout=ToutFanTurbine[
				
		]	
		
		
		
	]	

End[] (* End Private Context *)

EndPackage[]