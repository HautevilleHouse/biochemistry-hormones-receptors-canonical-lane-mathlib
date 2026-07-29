import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure HormoneReceptor where
  name : String
  affinity : Float
  signalingPathway : String

structure HormoneLigand where
  name : String
  concentration : Float

structure BindingSite where
  receptor : HormoneReceptor
  ligand : HormoneLigand
  bindingEnergy : Float

structure BindingComplex where
  site : BindingSite
  halfLife : Float
  active : Bool

structure BiochemistryAdmittedObject where
  complex : BindingComplex
  bindingCurve : Prop
  conclusion : bindingCurve

def BiochemistryWitnessClosed (O : BiochemistryAdmittedObject) : Prop :=
  O.bindingCurve

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse
