import HautevilleHouse.BiochemistryHormonesReceptorsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure BindingKinetics (R L : Type) where
  associationRate : ℝ
  dissociationRate : ℝ
  equilibriumConstant : ℝ
  kd : ℝ
  bindingSiteOccupancy : Prop
  lawOfMassAction : Prop
  associationRatePos : associationRate > 0
  dissociationRatePos : dissociationRate > 0
  kdEq : kd = dissociationRate / associationRate
  equilibriumConstantDefined : equilibriumConstant = 1 / kd

structure BindingKineticsEvidence (BK : BindingKinetics R L) where
  bindingSiteOccupancyClosed : BK.bindingSiteOccupancy
  lawOfMassActionClosed : BK.lawOfMassAction

def BindingKineticsClosed (BK : BindingKinetics R L) : Prop :=
  BK.bindingSiteOccupancy ∧ BK.lawOfMassAction

theorem binding_kinetics_closed_from_evidence
    (BK : BindingKinetics R L) (E : BindingKineticsEvidence BK) :
    BindingKineticsClosed BK := by
  exact And.intro E.bindingSiteOccupancyClosed E.lawOfMassActionClosed

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse