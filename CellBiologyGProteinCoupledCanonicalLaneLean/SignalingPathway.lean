import CellBiologyGProteinCoupledCanonicalLaneLean.GProteinActivation

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure SignalingPathwayPackage {R : ReceptorDynamicsPackage}
    {G : GProteinActivationPackage R} where
  secondMessengerProduction : Prop
  kinaseCascadeActivation : Prop
  transcriptionFactorRegulation : Prop
  cellularResponseObserved : Prop

structure SignalingPathwayEvidence {R : ReceptorDynamicsPackage}
    {G : GProteinActivationPackage R} (S : SignalingPathwayPackage G) where
  secondMessengerProductionClosed : S.secondMessengerProduction
  kinaseCascadeActivationClosed : S.kinaseCascadeActivation
  transcriptionFactorRegulationClosed : S.transcriptionFactorRegulation
  cellularResponseObservedClosed : S.cellularResponseObserved

def SignalingPathwayClosed {R : ReceptorDynamicsPackage}
    {G : GProteinActivationPackage R} (S : SignalingPathwayPackage G) : Prop :=
  S.secondMessengerProduction ∧ S.kinaseCascadeActivation ∧
  S.transcriptionFactorRegulation ∧ S.cellularResponseObserved

theorem signaling_pathway_closed_from_evidence {R : ReceptorDynamicsPackage}
    {G : GProteinActivationPackage R} (S : SignalingPathwayPackage G)
    (E : SignalingPathwayEvidence S) : SignalingPathwayClosed S := by
  exact And.intro E.secondMessengerProductionClosed
    (And.intro E.kinaseCascadeActivationClosed
      (And.intro E.transcriptionFactorRegulationClosed E.cellularResponseObservedClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse