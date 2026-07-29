import BiochemistryHormonesReceptorsCanonicalLaneLean.ReceptorBindingProof

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure BindingKineticsEvidenceTerms {B : BindingAffinityPackage}
    (C : BindingKineticsCertificate B) where
  equilibriumConstantDerived : C.equilibriumConstantDerived
  rateLawDerived : C.rateLawDerived
  michaelisMentenDerived : C.michaelisMentenDerived
  bindingCurveDerived : C.bindingCurveDerived
  bindingClosed : BindingAffinityClosed B

def BindingKineticsCertificate.evidenceTerms {B : BindingAffinityPackage}
    (C : BindingKineticsCertificate B) : BindingKineticsEvidenceTerms C := {
  equilibriumConstantDerived := C.equilibriumConstantDerivedClosed
  rateLawDerived := C.rateLawDerivedClosed
  michaelisMentenDerived := C.michaelisMentenDerivedClosed
  bindingCurveDerived := C.bindingCurveDerivedClosed
  bindingClosed := binding_affinity_closed_from_evidence B C.bindingEvidence
}

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse
