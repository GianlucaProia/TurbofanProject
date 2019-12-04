(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`AllJavaObjInstances`Components`InletInstances`"]
(* Exported symbols added here with SymbolName::usage *)  

NewInletObject::usage="NewInletObject[vars]";

Begin["`Private`"] (* Begin Private Context *) 

	NewInletObject[vars_]:=Module[{inlet},
	 inlet=JavaNew["com.component.inlet.Inlet", vars];   
	]
	
	

End[] (* End Private Context *)

EndPackage[]