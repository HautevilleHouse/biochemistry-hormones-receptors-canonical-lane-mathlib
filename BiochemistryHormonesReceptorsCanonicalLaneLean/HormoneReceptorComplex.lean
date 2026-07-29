import HautevilleHouse.BiochemistryHormonesReceptorsCanonicalLaneLean.SignalTransduction

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure HormoneReceptorComplex (H R : Type) where
  hormone : H
  receptor : R
  complexFormed : Prop
  inducedFit : Prop
  conformationalChange : Prop
  halfMaximalConcentration : ℝ
  ec50 : ℝ
  ec50Pos : ec50 > 0
  complexFormationRate : ℝ
  complexFormationRatePos : complexFormationRate > 0

structure HormoneReceptorComplexEvidence (HRC : HormoneReceptorComplex H R) where
  complexFormedClosed : HRC.complexFormed
  inducedFitClosed : HRC.inducedFit
  conformationalChangeClosed : HRC.conformationalChange

def HormoneReceptorComplexClosed (HRC : HormoneReceptorComplex H R) : Prop :=
  HRC.complexFormed ∧ HRC.inducedFit ∧ HRC.conformationalChange

theorem hormone_receptor_complex_closed_from_evidence
    (HRC : HormoneReceptorComplex H R) (E : HormoneReceptorComplexEvidence HRC) :
    HormoneReceptorComplexClosed HRC := by
  exact And.intro E.complexFormedClosed
    (And.intro E.inducedFitClosed E.conformationalChangeClosed)

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse