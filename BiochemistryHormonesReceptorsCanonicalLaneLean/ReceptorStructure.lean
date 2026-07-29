import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure ReceptorStructurePackage where
  bindingPocketVolume : ℝ
  conformationalChangeEnergy : ℝ
  ligandSpecificity : Prop
  allostericModulation : Prop
  dimerizationCapability : Prop

structure ReceptorStructureEvidence (P : ReceptorStructurePackage) where
  ligandSpecificityClosed : P.ligandSpecificity
  allostericModulationClosed : P.allostericModulation
  dimerizationCapabilityClosed : P.dimerizationCapability

def ReceptorStructureClosed (P : ReceptorStructurePackage) : Prop :=
  P.ligandSpecificity ∧ P.allostericModulation ∧ P.dimerizationCapability

theorem receptor_structure_closed_from_evidence
    (P : ReceptorStructurePackage) (E : ReceptorStructureEvidence P) :
    ReceptorStructureClosed P := by
  exact And.intro E.ligandSpecificityClosed
    (And.intro E.allostericModulationClosed E.dimerizationCapabilityClosed)

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse