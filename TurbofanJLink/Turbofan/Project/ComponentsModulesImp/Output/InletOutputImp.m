(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`InletOutputImp`",
{
 "Turbofan`Project`PureMathFunctions`CycleFunctions`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	
	CalculateInletTout[inletObj_]:=Module[{inletTout},
	 	inletTout=ToutInlet[
	 		inletObj@getAirFlowIn[]@getT[],
	 		inletObj@getGamma[],
	 		inletObj@getAitFlowIn[]@getMachNumber[]
	 	];   
	    inletObj@getAirFlowOut[]@setT[inletTout];
	]

	
	CalculateInletPout[inletObj_]:=Module[{inletPout},
	 	inletPout=PoutInlet[   
	    	inletObj@getAirFlowOut[]@getT[],
	    	inletObj@getAirFlowIn[]@getT[],
	    	inletObj@getAirFlowIn[]@getP[],
	    	inletObj@getAirFlowIn[]@getGamma[],
	    	inletObj@getEpsilonD[]
	 	];
	 	inletObj@getAirFlowOut[]@setP[inletPout];
	]
	
	
	CalculateInletGammaOut[inletObj_]:=Module[{},
		inletObj@getAirFlowOut[]@setGamma[
		  inletObj@getAirFlowIn[]@getGamma[]  
		];	    
	]		
	

End[] (* End Private Context *)

EndPackage[]