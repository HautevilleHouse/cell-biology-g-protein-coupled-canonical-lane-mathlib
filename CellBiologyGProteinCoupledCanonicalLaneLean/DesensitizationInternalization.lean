import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure DesensitizationInternalizationPackage where
  receptorPhosphorylation : Prop
  betaArrestinRecruitment : Prop
  receptorInternalization : Prop
  receptorRecycling : Prop
  signalTermination : Prop

structure DesensitizationInternalizationEvidence (D : DesensitizationInternalizationPackage) where
  receptorPhosphorylationClosed : D.receptorPhosphorylation
  betaArrestinRecruitmentClosed : D.betaArrestinRecruitment
  receptorInternalizationClosed : D.receptorInternalization
  receptorRecyclingClosed : D.receptorRecycling
  signalTerminationClosed : D.signalTermination

def DesensitizationInternalizationClosed (D : DesensitizationInternalizationPackage) : Prop :=
  D.receptorPhosphorylation ∧ D.betaArrestinRecruitment ∧ D.receptorInternalization ∧
  D.receptorRecycling ∧ D.signalTermination

theorem desensitization_internalization_closed_from_evidence (D : DesensitizationInternalizationPackage)
    (E : DesensitizationInternalizationEvidence D) : DesensitizationInternalizationClosed D := by
  exact And.intro E.receptorPhosphorylationClosed
    (And.intro E.betaArrestinRecruitmentClosed
      (And.intro E.receptorInternalizationClosed
        (And.intro E.receptorRecyclingClosed E.signalTerminationClosed)))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse