(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`InletOutput`",
    {
    "Turbofan`Project`ComponentsModulesImp`Output`InletOutputImp`"
    }]
    
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateInletOutput[inletObj_] := Module[{},
		CalculateMachOutput[inletObj];
		CalculateInletTout[inletObj];
		CalculateInletT0out[inletObj];
		CalculateInletPout[inletObj];
		CalculateInletPout[inletObj];
		CalculateInletGammaOut[inletObj];
	]
	
			
	


End[] (* End Private Context *)

EndPackage[]