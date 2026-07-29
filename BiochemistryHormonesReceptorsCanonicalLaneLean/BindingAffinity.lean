import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure BindingAffinityPackage where
  dissociationConstant : Float
  associationRate : Float
  dissociationRate : Float
  equilibriumConstant : Prop
  kineticsModel : Prop

structure BindingAffinityEvidence (B : BindingAffinityPackage) where
  dissociationConstantClosed : B.dissociationConstant > 0
  associationRateClosed : B.associationRate > 0
  dissociationRateClosed : B.dissociationRate > 0
  equilibriumConstantClosed : B.equilibriumConstant
  kineticsModelClosed : B.kineticsModel

def BindingAffinityClosed (B : BindingAffinityPackage) : Prop :=
  B.dissociationConstant > 0 ∧
  B.associationRate > 0 ∧
  B.dissociationRate > 0 ∧
  B.equilibriumConstant ∧
  B.kineticsModel

theorem binding_affinity_closed_from_evidence (B : BindingAffinityPackage)
    (E : BindingAffinityEvidence B) : BindingAffinityClosed B := by
  exact And.intro E.dissociationConstantClosed
    (And.intro E.associationRateClosed
      (And.intro E.dissociationRateClosed
        (And.intro E.equilibriumConstantClosed E.kineticsModelClosed)))

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse
