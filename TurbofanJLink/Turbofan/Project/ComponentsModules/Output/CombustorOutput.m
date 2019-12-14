(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`CombustorOutput`",
{
"Turbofan`Project`ComponentsModulesImp`Output`CombustorOutputImp`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateCombustorOutput[combustorObj_]:=Module[{},
	 	CalculateCombustorTout[combustorObj];   
	    CalculateCombustorPout[combustorObj];
	    CalculateCombustorAlpha[combustorObj];
	]



End[] (* End Private Context *)

EndPackage[]