(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`AllJavaObjInstances`Turbofan`TurbofanInstances`",
{
"Turbofan`Project`AllJavaObjInstances`Components`InletInstances`"
}
]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 
	
	(* Istanza a partire dalle istanze già create dei componenti... *)
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

	(* Istanza a partire dalle variabili di base, generando l'istanza di ogni componente... *)
	NewTurbofanObjectFromVars[var1_,var2_]:=Module[{inlet},
	 inlet=NewInletObject[var1]; 
	 (* Altre istanze di altri componenti *)
	 NewTurbofanObject[inlet, others];   
	]
	
End[] (* End Private Context *)

EndPackage[]