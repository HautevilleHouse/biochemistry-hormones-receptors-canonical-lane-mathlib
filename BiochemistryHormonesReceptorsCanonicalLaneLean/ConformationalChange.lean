import HautevilleHouse.BiochemistryHormonesReceptorsCanonicalLaneLean.HormoneReceptorComplex

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure ConformationalChangeDescription (H R : Type) where
  receptor : R
  hormone : H
  initialState : Type
  activeState : Type
  transitionEnergy : ℝ
  inducedFitMechanism : Prop
  allostericModulation : Prop
  transitionEnergyPos : transitionEnergy > 0
  inducedFitMechanismClosed : inducedFitMechanism
  allostericModulationClosed : allostericModulation

structure ConformationalChangeEvidence (CCD : ConformationalChangeDescription H R) where
  inducedFitMechanismClosed : CCD.inducedFitMechanism
  allostericModulationClosed : CCD.allostericModulation

def ConformationalChangeClosed (CCD : ConformationalChangeDescription H R) : Prop :=
  CCD.inducedFitMechanism ∧ CCD.allostericModulation

theorem conformational_change_closed_from_evidence
    (CCD : ConformationalChangeDescription H R) (E : ConformationalChangeEvidence CCD) :
    ConformationalChangeClosed CCD := by
  exact And.intro E.inducedFitMechanismClosed E.allostericModulationClosed

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse