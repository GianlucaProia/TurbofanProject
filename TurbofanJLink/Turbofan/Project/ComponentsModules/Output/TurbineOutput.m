(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`TurbineOutput`",
{
"Turbofan`Project`ComponentsModulesImp`Output`TurbineOutputImp`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	(* Uscite della turbina del fan *)
	CalculateFanTurbineOutput[fanObj_,compressorObj_,combustorObj_,turbineFanObj_,turbineCompObj_]:=Module[{},
	    CalculateToutFanTurbine[fanObj,compressorObj,combustorObj,turbineFanObj,turbineCompObj];
	    CalculatePoutFanTurbine[turbineFanObj];
	]
	
	(* Uscita della turbina del compressore *)
	CalculateCompressorTurbineOutput[combustorObj_,compressorObj_,turbineCompObj_]:=Module[{},
	   CalculateToutCompressorTurbine[combustorObj,compressorObj,turbineCompObj];
	   CalculatePoutCompressorTurbine[turbineCompObj];
	]
	
	

End[] (* End Private Context *)

EndPackage[]