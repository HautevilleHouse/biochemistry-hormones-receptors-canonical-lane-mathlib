import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHormonesReceptorsCanonicalLaneLean.PrimitiveReceptorSystem
import HautevilleHouse.BiochemistryHormonesReceptorsCanonicalLaneLean.ReceptorBindingKinetics

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure ReceptorAnalyticFoundation where
  primitive : PrimitiveReceptorSystem
  primitiveEvidence : PrimitiveReceptorSystemEvidence primitive
  kinetics : BindingKineticsPackage primitive
  kineticsEvidence : BindingKineticsEvidence kinetics

def ReceptorAnalyticFoundationClosed (A : ReceptorAnalyticFoundation) : Prop :=
  PrimitiveReceptorSystemClosed A.primitive ∧ BindingKineticsClosed A.kinetics

theorem receptor_analytic_foundation_closed_from_evidence
    (A : ReceptorAnalyticFoundation) : ReceptorAnalyticFoundationClosed A := by
  exact And.intro
    (primitive_receptor_system_closed_from_evidence A.primitive A.primitiveEvidence)
    (binding_kinetics_closed_from_evidence A.kinetics A.kineticsEvidence)

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse