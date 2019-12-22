(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`ComponentsModules`Output`FanOutput`",
    {
    "Turbofan`Project`ComponentsModulesImp`Output`FanOutputImp`"
    }]
(* Exported symbols added here with SymbolName::usage *)  


Begin["`Private`"] (* Begin Private Context *) 

(*
La funzione calcola la temperatura di uscita dal fan,
la pressione, il flusso in ingresso ai componenti CalculateFanMassFlowIn[],
il flusso esterno ai componenti, CalculateFanMassFlowOut[],
il gamma in uscita, che al momento è lo stesso di quello in ingresso.   
*)

	CalculateFanOutput[fanObj_]:=Module[{},
		 CalculateFanTout[fanObj];
		 CalculateFanPout[fanObj];
		 CalculateFanMassFlowIn[fanObj];
		 CalculateFanMassFlowOut[fanObj];
		 CalculateFanGammaout[fanObj];	    
	]


End[] (* End Private Context *)

EndPackage[]