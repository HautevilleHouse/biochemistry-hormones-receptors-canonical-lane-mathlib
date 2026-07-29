import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure AdmissibleClass where
  object : HormoneReceptorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HormoneReceptorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse