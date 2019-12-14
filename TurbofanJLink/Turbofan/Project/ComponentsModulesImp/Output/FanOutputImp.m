(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`FanOutputImp`",
{
 "Turbofan`Project`PureMathFunctions`CycleFunctions`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	
	CalculateFanTout[fanObj_]:=Module[{toutFan},
	 	toutFan=ToutFan[
	 	    fanObj@getAirFlowIn[]@getT[],
	 	    fanObj@getAirFlowIn[]@getP[],
	 	    fanObj@getBetaFan[],
	 	    fanObj@getGamma[],
	 	    fanObj@getEtaFan[]	 	    	 	    
	 	];  
	    fanObj@getAirFlowFirstOut[]@setT[toutFan];
	    fanObj@getAirFlowSecondOut[]@setT[toutFan];
	]
	
	
	CalculateFanPout[fanObj_]:=Module[{poutFan},
	 	poutFan=PoutFan[
	 		fanObj@getAirFlowIn[]@getP[],
	 		fanObj#getBetaFan[]
	 	];   
	    fanObj@getAirFlowFirstOut[]@setP[poutFan];
	    fanObj@getAirFlowSecondOut[]@setP[poutFan];
	]
	
	CalculateFanMassFlowIn[fanObj_]:=Module[{massFlowIn,massFlowRateTot},
	 	massFlowRateTot=fanObj@getMassFlowRate[];
	 	massFlowIn=FanMassFlowIn[
	 		massFlowRateTot,
	 		fanObj@getBPR[]
	 	];   
	    fanObj@getAirFlowFirstOut[]@setMassFlowRate[massFlowIn];
	]
	
	CalculateFanMassFlowOut[fanObj_]=Module[{massFlowRateTot,massFlowIn},
	 	massFlowRateTot=fanObj@getMassFlowRate[];   
	    massFlowIn=FanMassFlowOut[
	    	massFlowRateTot,
	    	fanObj@getBPR[]
	    ];
	    fanObj@getAirFlowSecondOut[]@setMassFlowRate[massFlowIn];
	]
	
	CalculateFanGammaout[fanObj_]:=Module[{gammaIn},
		gammaIn=fanObj@getAirFlowIn[]@getGamma[];
		
		fanObj@getAirFlowFirstOut[]@setGamma[
		 gammaIn
		];
		fanObj@getAirFlowSecondOut[
		 gammaIn
		];
	 ]


End[] (* End Private Context *)

EndPackage[]