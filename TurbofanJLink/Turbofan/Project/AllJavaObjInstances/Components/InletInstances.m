(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`AllJavaObjInstances`Components`InletInstances`",{"JLink`"}]
(* Exported symbols added here with SymbolName::usage *)  

NewInletObject::usage="NewInletObject[vars]";

Begin["`Private`"] (* Begin Private Context *) 

	NewInletObject[]:=Module[{inlet},
	 inlet=JavaNew["com.component.inlet.Inlet"];
	 inlet   
	]
	
	

End[] (* End Private Context *)

EndPackage[]