(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`MixerOutputImp`",
{
"Turbofan`Project`PureMathFunctions`CycleFunctions`"
}
]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	 CalculateToutMixer[fanObj_,mixerObj_]:=Module[{toutMixer},
	     toutMixer=ToutMixer[
	     	fanObj@getBPR[],
	     	mixerObj@getAirFlowIn1[]@getT[],
	     	mixerObj@getAirFlowin2[]@getT[]
	     ];
	     mixerObj@getAirFlowOut[]@setT[toutMixer];
	 ]
	
	CalculatePoutMixer[mixerObj_]:=Module[{poutMixer},
	    poutMixer=PoutMIxer[
	     	mixerObj@getAirFlowIn1[]@getP[]   
	    ];
		mixerObj@getAirFlowOut[]@setP[poutMixer];
	]

End[] (* End Private Context *)

EndPackage[]