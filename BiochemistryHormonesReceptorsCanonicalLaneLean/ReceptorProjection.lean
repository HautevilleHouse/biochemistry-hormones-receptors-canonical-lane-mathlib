import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHormonesReceptorsCanonicalLaneLean.PrimitiveReceptorSystem

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ReceptorEndgameState where
  object : PrimitiveReceptorSystem

def receptorProjection : Projection ReceptorEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem receptor_projection_idempotent (x : ReceptorEndgameState) :
    receptorProjection.toFun (receptorProjection.toFun x) = receptorProjection.toFun x := by
  exact receptorProjection.idempotent x

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse