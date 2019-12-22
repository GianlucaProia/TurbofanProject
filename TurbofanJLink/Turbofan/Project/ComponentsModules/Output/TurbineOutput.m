(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`TurbineOutput`",
{
"Turbofan`Project`ComponentsModulesImp`Output`TurbineOutputImp`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateFanTurbineOutput[fanObj_,compressorObj_,combustorObj_,fanTurbineObj_]:=Module[{},
	    CalculateToutFanTurbine[combustorObj,compressorObj,fanObj_,fanTurbineObj];
	    
	    
	]
	
	(* Uscita dalla turbina del compressore *)
	CalculateCompressorTurbineOutput[combustorObj_,compressorObj_,turbineCompObj_,turbineFanObj_]:=Module[{},
	   CalculateToutCompressorTurbine[combustorObj,compressorObj,turbineFanObj,turbineCompObj];
	   CalculatePoutCompressorTurbine[turbineObj];
	]
	
	
	


End[] (* End Private Context *)

EndPackage[]