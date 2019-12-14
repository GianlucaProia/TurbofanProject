(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`CompressorOutput`",
{
 "Turbofan`Project`ComponentsModulesImp`Output`CompressorOutputImp`"
}]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateCompressorOutput[compressorObj_]:=Module[{},
	    CalculateCompressorPout[compressorObj];
	    CalculateCompressorTout[compressorObj];
	    CalculateCompressorGammaOut[compressorObj];
	]



End[] (* End Private Context *)

EndPackage[]