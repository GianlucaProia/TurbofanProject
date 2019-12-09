(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`PureMathFunctions`CycleFunctions`",
    {
     "Turbofan`Project`PureMathFunctions`Thermodynamics`"
    }]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

	(*====================================================*)
	(* PRESA DINAMICA *)
	ToutInlet[Tin_,gamma_,MachIn_]:=Ttot[Tin,gamma,MachIn];
	PoutInlet[ToutInlet_,Tin_,Pin_,gamma_,epsilonD_]:=epsilonD*((ToutInlet/Tin)^(gamma/(gamma-1)))*Pin;
	
	(* COMPRESSORE *)
	
	

End[] (* End Private Context *)

EndPackage[]