(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`AllTurbofanModules`TurbofanCycle`",
    {
    "Turbofan`Project`ComponentsModules`Output`FanOutput`",
    "Turbofan`Project`ComponentsModules`Output`InletOutput`"
    }]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateTurbofanCycle[turbofanObj_]:=Module[{},
	 	  CalculateFanOutput[turbofanObj@getFan[]]; 
	]

End[] (* End Private Context *)

EndPackage[]