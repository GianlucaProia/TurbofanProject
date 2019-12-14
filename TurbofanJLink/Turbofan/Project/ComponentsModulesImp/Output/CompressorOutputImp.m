(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`CompressorOutputImp`",
{
"Turbofan`Project`PureMathFunctions`CycleFunctions`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateCompressorTout[compressorObj_]:=Module[{compressorTout},
	 	compressorTout=ToutCompressor[
	 		compressorObj@getAirFlowIn[]@getT[],
	 		compressorObj@getBetaCompressor[],
	 		compressorObj@getAirFlowIn[]@getGamma[],
	 		compressorObj@getEtaCompressor[]
	 	];
	    compressorObj@getAirFlowOut[]@setT[compressorTout];
	]
	
	CalculateCompressorPout[compressorObj_]:=Module[{compressorPout},
	 	compressorPout=PoutCompressor[
	 		compressorObj@getAirFlowIn[]@getP[],
	 		compressorObj@getBetaCompressor[]
	 	];
	 	compressorObj@getAirFlowOut[]@setP[compressorPout];   
	]
	
	CalculateCompressorGammaOut[compressorObj_]:=Module[{},
		compressorObj@getAirFlowOut[]@setGamma[
			compressorObj@getAirFlowIn[]
		];
	]
	

End[] (* End Private Context *)

EndPackage[]