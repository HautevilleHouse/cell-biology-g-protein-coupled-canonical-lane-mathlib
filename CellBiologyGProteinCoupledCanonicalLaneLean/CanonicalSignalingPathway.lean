import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure CanonicalSignalingPathwayPackage where
  gsPathway : Prop
  gqPathway : Prop
  giPathway : Prop
  arrestinPathway : Prop
  pathwayCrossTalk : Prop

structure CanonicalSignalingPathwayEvidence (C : CanonicalSignalingPathwayPackage) where
  gsPathwayClosed : C.gsPathway
  gqPathwayClosed : C.gqPathway
  giPathwayClosed : C.giPathway
  arrestinPathwayClosed : C.arrestinPathway
  pathwayCrossTalkClosed : C.pathwayCrossTalk

def CanonicalSignalingPathwayClosed (C : CanonicalSignalingPathwayPackage) : Prop :=
  C.gsPathway ∧ C.gqPathway ∧ C.giPathway ∧ C.arrestinPathway ∧ C.pathwayCrossTalk

theorem canonical_signaling_pathway_closed_from_evidence (C : CanonicalSignalingPathwayPackage)
    (E : CanonicalSignalingPathwayEvidence C) : CanonicalSignalingPathwayClosed C := by
  exact And.intro E.gsPathwayClosed
    (And.intro E.gqPathwayClosed
      (And.intro E.giPathwayClosed
        (And.intro E.arrestinPathwayClosed E.pathwayCrossTalkClosed)))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse