(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`MixerOutput`",
{
"Turbofan`Project`ComponentsModulesImp`Output`MixerOutputImp`"
}
]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateMixerOutput[fanObj_,turbineFanObj_,mixerObj_]:=Module[{},
	 CalculateToutMixer[fanObj,turbineFanObj,mixerObj];   
	 CalculatePoutMixer[fanObj,mixerObj];   
	]
	
	

End[] (* End Private Context *)

EndPackage[]