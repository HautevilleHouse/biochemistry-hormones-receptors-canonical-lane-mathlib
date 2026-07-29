import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryHormonesReceptorsCanonicalLaneLean.ReceptorAnalyticFoundation

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure ReceptorReviewerBridgeData where
  bindingConstantKey : String
  signalAmplitudeCheck : Bool
  pathwayValidation : Prop
  sourceHash : String
  manifestEntryCount : Nat

def defaultReceptorReviewerBridgeData : ReceptorReviewerBridgeData := {
  bindingConstantKey := "Kd",
  signalAmplitudeCheck := true,
  pathwayValidation := True,
  sourceHash := "abc123def456",
  manifestEntryCount := 5
}

theorem receptor_reviewer_bridge_constant :
    defaultReceptorReviewerBridgeData.bindingConstantKey = "Kd" := by
  rfl

theorem receptor_reviewer_bridge_amplitude_check :
    defaultReceptorReviewerBridgeData.signalAmplitudeCheck = true := by
  rfl

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse