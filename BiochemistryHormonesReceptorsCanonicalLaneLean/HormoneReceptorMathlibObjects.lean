import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure HormoneReceptorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HormoneReceptorAdmittedObject where
  receptor : HormoneReceptorSpace
  ligandPresent : Prop
  bindingAffinity : Prop
  conformationalChangeTriggered : Prop
  downstreamSignaling : Prop
  conclusion : bindingAffinity ∧ conformationalChangeTriggered ∧ downstreamSignaling

structure HormoneReceptorEndgameState where
  object : HormoneReceptorAdmittedObject

def HormoneReceptorWitnessClosed (O : HormoneReceptorAdmittedObject) : Prop :=
  O.bindingAffinity ∧ O.conformationalChangeTriggered ∧ O.downstreamSignaling

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse