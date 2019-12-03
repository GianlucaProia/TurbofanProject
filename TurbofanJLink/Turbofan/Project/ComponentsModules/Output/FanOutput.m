(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`FanOutput`"]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 


	CalculateFanOutput[fanObj_]:=Module[{},
	 CalculateFanMachOut[fanObj];
	 CalculateFanTout[fanObj];
	 CalculateFanPout[fanObj];
	 CalculateFanMassFlowIn[fanObj];
	 CalculateFanMassFlowOut[fanObj];	    
	]


End[] (* End Private Context *)

EndPackage[]