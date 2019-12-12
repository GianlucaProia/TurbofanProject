(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`InletOutput`",
    {
    "Turbofan`Project`ComponentsModulesImp`Output`InletOutputImp`"
    }]
    
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateInletOutput[inletObj_] := Module[{},
		CalculateInletTout[inletObj];
		CalculateInletPout[inletObj];
		CalculateInletGammaOut[inletObj];
	]
	
			
	


End[] (* End Private Context *)

EndPackage[]