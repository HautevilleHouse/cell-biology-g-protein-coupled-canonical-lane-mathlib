import HautevilleHouse.CellBiologyGProteinCoupledCanonicalLaneLean.LigandBindingEvidence

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure SecondMessengerCascadePackage where
  gProteinActivation : Prop
  effectorEnzymeActivation : Prop
  secondMessengerProduction : Prop
  downstreamSignaling : Prop
  gProteinActivationTerm : gProteinActivation
  effectorEnzymeActivationTerm : effectorEnzymeActivation
  secondMessengerProductionTerm : secondMessengerProduction
  downstreamSignalingTerm : downstreamSignaling

structure SecondMessengerCascadeEvidence (C : SecondMessengerCascadePackage) where
  gProteinActivationClosed : C.gProteinActivation
  effectorEnzymeActivationClosed : C.effectorEnzymeActivation
  secondMessengerProductionClosed : C.secondMessengerProduction
  downstreamSignalingClosed : C.downstreamSignaling

def SecondMessengerCascadeClosed (C : SecondMessengerCascadePackage) : Prop :=
  C.gProteinActivation ∧ C.effectorEnzymeActivation ∧
  C.secondMessengerProduction ∧ C.downstreamSignaling

theorem second_messenger_cascade_closed_from_evidence
    (C : SecondMessengerCascadePackage) (E : SecondMessengerCascadeEvidence C) :
    SecondMessengerCascadeClosed C := by
  exact And.intro E.gProteinActivationClosed
    (And.intro E.effectorEnzymeActivationClosed
      (And.intro E.secondMessengerProductionClosed E.downstreamSignalingClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse
