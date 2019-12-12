(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModulesImp`Output`FanOutputImp`",
{
 "Turbofan`Project`PureMathFunctions`CycleFunctions`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	
	CalculateFanTout[fanObj];
	
	CalculateFanPout[fanObj];
	
	CalculateFanMassFlowIn[fanObj];
	
	CalculateFanMassFlowOut[fanObj];
	
	CalculateFanGammaout[fanObj_]:=Module[{},
		fanObj@getAirFlowOut[]@setGamma[
		 fanObj@getAirFlowIn[]@getGamma[]
		]
	 ]


End[] (* End Private Context *)

EndPackage[]