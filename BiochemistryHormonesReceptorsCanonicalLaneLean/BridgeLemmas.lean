import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HormoneReceptorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse