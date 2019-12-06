(* Wolfram Language Package *)

BeginPackage["Turbofan`Project`PureMathFunctions`Thermodynamics`"]
(* Exported symbols added here with SymbolName::usage *)  

Begin["`Private`"] (* Begin Private Context *) 

(* Il package contiene tutte le funzioni rekative alla termodinamica 
dei flussi isentropici e non... *)

(* Compressione isentropica: Tin -> Tout *)
ToutIsenByComp[Tin_,beta_,gamma_]:=Tin*beta^((gamma-1)/gamma);

(* Pressione di uscita in una trasformazione isentropica: *)
PoutIsenByExpansion[Pin_,Tin_,ToutIsen_,gamma_]:= Pin*(Tin/ToutIsen)^(gamma/(gamma-1));



End[] (* End Private Context *)

EndPackage[]