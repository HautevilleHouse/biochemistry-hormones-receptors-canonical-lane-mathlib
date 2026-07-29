import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryHormonesReceptorsCanonicalLaneLean

structure PrimitiveLigand where
  molecularFormula : String
  concentration : Float
  bindingAffinity : Float
  derivedFromExperiment : Prop

structure PrimitiveReceptor where
  receptorType : String
  location : String
  bindingSiteGeometry : String
  expressionLevel : Prop

structure PrimitiveBindingState (L : PrimitiveLigand) (R : PrimitiveReceptor) where
  isBound : Prop
  dissociationConstant : Float
  hillCoefficient : Float
  kineticsDerived : Prop

structure PrimitiveReceptorSystem where
  ligand : PrimitiveLigand
  receptor : PrimitiveReceptor
  bindingState : PrimitiveBindingState ligand receptor
  downstreamEffect : Prop
  signalAmplitude : Float
  downstreamEffectTerm : downstreamEffect

structure PrimitiveReceptorSystemEvidence (P : PrimitiveReceptorSystem) where
  ligandDerivedClosed : P.ligand.derivedFromExperiment
  receptorExpressionClosed : P.receptor.expressionLevel
  bindingKineticsClosed : P.bindingState.kineticsDerived
  downstreamEffectClosed : P.downstreamEffect
  signalAmplitudePositive : P.signalAmplitude > 0

def PrimitiveReceptorSystemClosed (P : PrimitiveReceptorSystem) : Prop :=
  P.ligand.derivedFromExperiment ∧ P.receptor.expressionLevel ∧
  P.bindingState.kineticsDerived ∧ P.downstreamEffect ∧
  (P.signalAmplitude > 0)

theorem primitive_receptor_system_closed_from_evidence
    (P : PrimitiveReceptorSystem) (E : PrimitiveReceptorSystemEvidence P) :
    PrimitiveReceptorSystemClosed P := by
  exact And.intro E.ligandDerivedClosed
    (And.intro E.receptorExpressionClosed
      (And.intro E.bindingKineticsClosed
        (And.intro E.downstreamEffectClosed E.signalAmplitudePositive)))

end BiochemistryHormonesReceptorsCanonicalLaneLean
end HautevilleHouse