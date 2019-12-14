(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`AllJavaObjInstances`Passparameters`PassParameters`"]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	PassFlowParametersOnetoOne[obj1_,obj2_]:=Module[{},
	 	obj2@setAirFlowIn[
	 		obj1@getAirFlowOut[]
	 	]; 
	]
	
	PassFlowParametersTwotoOne[{obj1_,obj2_},obj3_]:=Module[{airFlow1,airFlow2},
	 	airFlow1=obj1@getAirFlowOut[];
	 	airFlow2=obj2@getAirFlowOut[];   
	    obj3@setAirFlow1[airFlow1];
	    obj3@setAirFlow2[airFlow2];
	]

	
	
End[] (* End Private Context *)

EndPackage[]