(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`CombustorOutputImp`",
{
"Turbofan`Project`PureMathFunctions`CycleFunctions`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	 	CalculateCombustorTout[combustorObj_]:=Module[{},
	 	 	Null; 
	 	]
	 	
	    CalculateCombustorPout[combustorObj_]:=Module[{poutCombustor},
	     	poutCombustor=PoutCombustor[
	     		combustorObj@getAirFlowIn[]@getP[],
	     		combustorObj@getEtaPCombustor[]
	     	];   
			combustorObj@getAirFlowOut[]@setP[poutCombustor];	        
	    ]
	    
	    CalculateCombustorCpout[combustorObj_]:=Module[{cpoutCombustor},
	     	cpoutCombustor=combustorObj@getAirFlowIn[]@getCp[];   
	        combustorObj@getAirFlowOut[]@setCp[cpoutCombustor];
	    ]

	    CalculateCombustorAlpha[combustorObj_]:=Module[{alphaCombustor},
	     	alphaCombustor=AlphaCombustor[
	     	    combustorObj@getAirFlowIn@getT[],
	     	    combustorObj@getAirFlowOut[]@getT[],
	     	    combustorObj@getQCalor[],
	     	    combustorObj@getAirFlowIn[]@getCp[],
	     	    combustorObj@getEtaCombustor[]
	     	];
			combustorObj@setAlpha[alphaCombustor];	        
	    ]


End[] (* End Private Context *)

EndPackage[]