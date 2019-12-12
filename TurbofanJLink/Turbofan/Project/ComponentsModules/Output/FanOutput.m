(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`FanOutput`",
    {
    "Turbofan`Project`ComponentsModulesImp`Output`FanOutputImp`"
    }]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 


	CalculateFanOutput[fanObj_]:=Module[{},
		 CalculateFanTout[fanObj];
		 CalculateFanPout[fanObj];
		 CalculateFanMassFlowIn[fanObj];
		 CalculateFanMassFlowOut[fanObj];
		 CalculateFanGammaout[fanObj];	    
	]


End[] (* End Private Context *)

EndPackage[]