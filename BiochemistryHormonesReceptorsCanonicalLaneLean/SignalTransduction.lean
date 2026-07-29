import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure SignalTransductionPackage where
  receptorType : String
  primaryEffector : String
  secondMessenger : String
  cascadeAmplification : Prop
  pathwayCrossTalk : Prop
  signalTermination : Prop

structure SignalTransductionEvidence (P : SignalTransductionPackage) where
  cascadeAmplificationClosed : P.cascadeAmplification
  pathwayCrossTalkClosed : P.pathwayCrossTalk
  signalTerminationClosed : P.signalTermination

def SignalTransductionClosed (P : SignalTransductionPackage) : Prop :=
  P.cascadeAmplification ∧ P.pathwayCrossTalk ∧ P.signalTermination

theorem signal_transduction_closed_from_evidence
    (P : SignalTransductionPackage) (E : SignalTransductionEvidence P) :
    SignalTransductionClosed P := by
  exact And.intro E.cascadeAmplificationClosed
    (And.intro E.pathwayCrossTalkClosed E.signalTerminationClosed)

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse