(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`MixerOutputImp`",
{
"Turbofan`Project`PureMathFunctions`CycleFunctions`"
}
]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	 CalculateToutMixer[fanObj_,turbineFanObj_,mixerObj_]:=Module[{toutMixer},
	     toutMixer=ToutMixer[
	     	fanObj@getBPR[],
	     	fanObj@getAirFlowSecondOut[]@getT[],
	     	turbineFanObj@getAirFlowOut[]@getT[]
	     ];
	     mixerObj@getAirFlowOut[]@setT[toutMixer];
	 ]


End[] (* End Private Context *)

EndPackage[]