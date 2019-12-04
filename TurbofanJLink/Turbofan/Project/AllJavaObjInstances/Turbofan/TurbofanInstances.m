(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`AllJavaObjInstances`Turbofan`TurbofanInstances`"]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	NewTurbofanObject[{inletObj_,fanObj_,compressorObj_,combustorObj_,turbineObj_,mixerObj_,nozzleObj_}]:=Module[{turbofan},
	 	turbofan=JavaNew[
	 	    "com.engine.turbofan.assflow.TurbofanAssFlow",
		 	inletObj,
		 	fanObj,
		 	compressorObj,
		 	combustorObj,
		 	turbineObj,
		 	mixerObj,
		 	nozzleObj
	 	];
	]

	
End[] (* End Private Context *)

EndPackage[]