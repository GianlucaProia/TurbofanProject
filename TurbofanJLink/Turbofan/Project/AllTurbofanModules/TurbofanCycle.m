(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`AllTurbofanModules`TurbofanCycle`",
    {
    (* PASS PARAMETERS... *)
    "Turbofan`Project`AllJavaObjInstances`Passparameters`PassParameters`",
    (* 	COMPONENTS... *)
    "Turbofan`Project`ComponentsModules`Output`FanOutput`",
    "Turbofan`Project`ComponentsModules`Output`InletOutput`",
    "Turbofan`Project`ComponentsModules`Output`CompressorOutput`",
    "Turbofan`Project`ComponentsModules`Output`CombustorOutput`"
    }]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	CalculateCycleByComponents[inletObj_,fanObj_,compressorObj_,combustorObj_,compTurbineObj_,fanTurbineObj_,mixerObj_,nozzleObj_]:=Module[{},
	    CalculateInletOutput[inletObj];
	    PassFlowParametersOnetoOne[inletObj,fanObj];
	    CalculateFanOutput[fanObj];
	    fanObj@setAirFlowOut[fanObj@getAirFlowFirstOut[]];
	    PassFlowParametersOnetoOne[fanObj,compressorObj];
	    CalculateCompressorOutput[compressorObj];
	    PassFlowParametersOnetoOne[compressorObj,combustorObj];
	    CalculateCombustorOutput[compressorObj];
	    PassFlowParametersOnetoOne[combustorObj,compTurbineObj];
	    CalculateCompressorTurbineOutput[compressorObj,compTurbineObj];
	    PassFlowParametersOnetoOne[compTurbineObj,fanTurbineObj];
	    CalculateFanTurbineOutput[fanObj,fanTurbineObj];
	    fanObj@setAirFlowOut[fanObj@getAirFlowSecond[]];
	    PassFlowParametersTwotoOne[{fanObj,fanTurbineObj},nozzleObj];
	    CalculateNozzleOutput[nozzleObj];
	]


End[] (* End Private Context *)

EndPackage[]