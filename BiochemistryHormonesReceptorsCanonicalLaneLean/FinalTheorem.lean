import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

def ConstrainedHormoneReceptorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hormone_receptor_endgame (A : AdmissibleClass) :
    ConstrainedHormoneReceptorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse