import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GPCRPathwayIntegrationPackage where
  mapkErkPathway : Prop
  pi3kAktPathway : Prop
  calciumSignaling : Prop
  crossTalkWithOtherReceptors : Prop

structure GPCRPathwayIntegrationEvidence (P : GPCRPathwayIntegrationPackage) where
  mapkErkPathwayClosed : P.mapkErkPathway
  pi3kAktPathwayClosed : P.pi3kAktPathway
  calciumSignalingClosed : P.calciumSignaling
  crossTalkWithOtherReceptorsClosed : P.crossTalkWithOtherReceptors

def GPCRPathwayIntegrationClosed (P : GPCRPathwayIntegrationPackage) : Prop :=
  P.mapkErkPathway ∧ P.pi3kAktPathway ∧ P.calciumSignaling ∧ P.crossTalkWithOtherReceptors

theorem gpcr_pathway_integration_closed_from_evidence
    (P : GPCRPathwayIntegrationPackage) (E : GPCRPathwayIntegrationEvidence P) :
    GPCRPathwayIntegrationClosed P := by
  exact And.intro E.mapkErkPathwayClosed
    (And.intro E.pi3kAktPathwayClosed
      (And.intro E.calciumSignalingClosed E.crossTalkWithOtherReceptorsClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse