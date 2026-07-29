import BiochemistryHormonesReceptorsCanonicalLaneLean.BindingAffinity

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure BindingKineticsCertificate (B : BindingAffinityPackage) where
  equilibriumConstantDerived : Prop
  rateLawDerived : Prop
  michaelisMentenDerived : Prop
  bindingCurveDerived : Prop
  equilibriumConstantDerivedClosed : equilibriumConstantDerived
  rateLawDerivedClosed : rateLawDerived
  michaelisMentenDerivedClosed : michaelisMentenDerived
  bindingCurveDerivedClosed : bindingCurveDerived
  bindingEvidence : BindingAffinityEvidence B

def BindingKineticsCertificateClosed {B : BindingAffinityPackage}
    (C : BindingKineticsCertificate B) : Prop :=
  C.equilibriumConstantDerived ∧
  C.rateLawDerived ∧
  C.michaelisMentenDerived ∧
  C.bindingCurveDerived ∧
  BindingAffinityClosed B

theorem binding_kinetics_certificate_closed {B : BindingAffinityPackage}
    (C : BindingKineticsCertificate B) : BindingKineticsCertificateClosed C := by
  exact And.intro C.equilibriumConstantDerivedClosed
    (And.intro C.rateLawDerivedClosed
      (And.intro C.michaelisMentenDerivedClosed
        (And.intro C.bindingCurveDerivedClosed
          (binding_affinity_closed_from_evidence B C.bindingEvidence))))

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse
