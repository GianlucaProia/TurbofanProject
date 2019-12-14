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
	
	(*====================================================*)
	(* FAN *)
	ToutFan[Tin_,Pin_,betaFan_,gamma_,etaFan_]:=Tin+(1/etaFan)*(ToutByIsenTrans[Tin,PoutFan[Pin,betaFan],Pin,gamma]-Tin);
	PoutFan[Pin_,betaFan_]:=betaFan*Pin;
	FanMassFlowIn[massFlowRateTot_,bpr_]:=massFlowRateTot/(1+bpr);
	FanMassFlowOut[massFlowRateTot_,bpr_]:=bpr*massFlowRateTot;

	(*====================================================*)
	(* COMPRESSORE *)
	ToutCompressor[Tin_,betaComp_,gamma_,etaComp_]:=Tin(1+(betaComp^((gamma-1)/gamma)-1)/etaComp);
	PoutCompressor[Pin_,betaComp_]:=betaComp*Pin;
	
	(*====================================================*)
	(* COMBUSTORE *)
	PoutCombustor[Pin_,etaPCombustor_]:=etaPCombustor*Pin;
	AlphaCombustor[Tin_,Tout_,Q_,cp_,etaBurner_]:=etaBurner*Q/(cp(Tout-Tin));
	
	(* TURBINA *)
	
	(* MIXER *)
	
	(* UGELLO *)
	

End[] (* End Private Context *)

EndPackage[]