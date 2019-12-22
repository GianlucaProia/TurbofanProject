(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`TurbineOutput`",
{
"Turbofan`Project`ComponentsModulesImp`Output`TurbineOutputImp`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	(* Uscite della turbina del fan *)
	CalculateFanTurbineOutput[fanObj_,compressorObj_,combustorObj_,fanTurbineObj_]:=Module[{},
	    CalculateToutFanTurbine[fanObj,compressorObj,combustorObj,fanObj_,fanTurbineObj];
	    CalculatePoutFanTurbine[fanTurbineObj];
	]
	
	(* Uscita della turbina del compressore *)
	CalculateCompressorTurbineOutput[combustorObj_,compressorObj_,turbineObj_]:=Module[{},
	   CalculateToutCompressorTurbine[combustorObj,compressorObj,turbineObj];
	   CalculatePoutCompressorTurbine[turbineObj];
	]
	
	

End[] (* End Private Context *)

EndPackage[]