(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`TurbineOutput`",
{
"Turbofan`Project`ComponentsModulesImp`Output`TurbineOutputImp`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

(*	CalculateFanTurbineOutput[fanObj_,fanTurbineObj_]:=Module[{},
	    
	    
	]*)
	
	CalculateCompressorTurbineOutput[combustorObj_,compressorObj_,turbineObj_]:=Module[{},
	   CalculateToutCompressorTurbine[combustorObj,compressorObj,turbineObj];
	   CalculatePoutCompressorTurbine[turbineObj];
	]
	
	


End[] (* End Private Context *)

EndPackage[]