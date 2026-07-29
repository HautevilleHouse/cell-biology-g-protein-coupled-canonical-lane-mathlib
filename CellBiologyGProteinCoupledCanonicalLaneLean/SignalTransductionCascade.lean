import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure SignalTransductionCascadePackage where
  gProteinActivation : Prop
  effectorInteraction : Prop
  secondMessengerProduction : Prop
  cascadeAmplification : Prop
  feedbackRegulation : Prop

structure SignalTransductionCascadeEvidence (S : SignalTransductionCascadePackage) where
  gProteinActivationClosed : S.gProteinActivation
  effectorInteractionClosed : S.effectorInteraction
  secondMessengerProductionClosed : S.secondMessengerProduction
  cascadeAmplificationClosed : S.cascadeAmplification
  feedbackRegulationClosed : S.feedbackRegulation

def SignalTransductionCascadeClosed (S : SignalTransductionCascadePackage) : Prop :=
  S.gProteinActivation ∧ S.effectorInteraction ∧ S.secondMessengerProduction ∧
  S.cascadeAmplification ∧ S.feedbackRegulation

theorem signal_transduction_cascade_closed_from_evidence (S : SignalTransductionCascadePackage)
    (E : SignalTransductionCascadeEvidence S) : SignalTransductionCascadeClosed S := by
  exact And.intro E.gProteinActivationClosed
    (And.intro E.effectorInteractionClosed
      (And.intro E.secondMessengerProductionClosed
        (And.intro E.cascadeAmplificationClosed E.feedbackRegulationClosed)))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse