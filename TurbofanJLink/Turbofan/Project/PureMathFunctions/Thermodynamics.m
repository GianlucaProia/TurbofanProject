(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`PureMathFunctions`Thermodynamics`"]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

(* Il package contiene tutte le funzioni rekative alla termodinamica 
dei flussi isentropici e non... *)

(* Compressione isentropica: Tin -> Tout *)
ToutByIsenTrans[Tin_,Pout_,Pin_,gamma_]:=Tin*(Pout/Pin)^((gamma-1)/gamma);

(* Pressione di uscita in una trasformazione isentropica: *)
PoutIsenTrans[Pin_,Tin_,ToutIsen_,gamma_]:= Pin*(ToutIsen/Tin)^(gamma/(gamma-1));

(* FLUSSI ISENTROPICI COMPRIMIBILI A UN DATO MACH *)
Ttot[Tstat_,gamma_,Mach_]:=Tstat*(1+((gamma-1)/2)*Mach^2);

Tstat[Ttot_,gamma_,Mach_]:=Ttot/(1+((gamma-1)/2)*Mach^2);

Ptot[Pstat_,gamma_,Mach_]:=Pstat*(1+((gamma-1)/2)*Mach^2)^(1/(gamma-1));

Pstat[Ptot_,gamma_,Mach_]:=Ptot/(1+((gamma-1)/2)*Mach^2)^(1/(gamma-1));


End[] (* End Private Context *)

EndPackage[]