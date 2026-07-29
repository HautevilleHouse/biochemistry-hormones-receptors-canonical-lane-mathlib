import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure ReceptorBindingKineticsPackage where
  dissociationConstant : ℝ
  associationRate : ℝ
  dissociationRate : ℝ
  bindingStoichiometry : ℕ
  equilibriumBinding : Prop
  kineticConsistency : Prop

structure ReceptorBindingKineticsEvidence (P : ReceptorBindingKineticsPackage) where
  equilibriumBindingClosed : P.equilibriumBinding
  kineticConsistencyClosed : P.kineticConsistency

def ReceptorBindingKineticsClosed (P : ReceptorBindingKineticsPackage) : Prop :=
  P.equilibriumBinding ∧ P.kineticConsistency

theorem receptor_binding_kinetics_closed_from_evidence
    (P : ReceptorBindingKineticsPackage) (E : ReceptorBindingKineticsEvidence P) :
    ReceptorBindingKineticsClosed P := by
  exact And.intro E.equilibriumBindingClosed E.kineticConsistencyClosed

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse