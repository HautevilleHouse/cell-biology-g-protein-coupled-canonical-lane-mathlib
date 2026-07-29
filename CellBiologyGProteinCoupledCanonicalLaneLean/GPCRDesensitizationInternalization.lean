import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GPCRDesensitizationInternalizationPackage where
  receptorPhosphorylation : Prop
  betaArrestinBinding : Prop
  internalizationViaEndocytosis : Prop
  receptorRecycling : Prop

structure GPCRDesensitizationInternalizationEvidence (P : GPCRDesensitizationInternalizationPackage) where
  receptorPhosphorylationClosed : P.receptorPhosphorylation
  betaArrestinBindingClosed : P.betaArrestinBinding
  internalizationViaEndocytosisClosed : P.internalizationViaEndocytosis
  receptorRecyclingClosed : P.receptorRecycling

def GPCRDesensitizationInternalizationClosed (P : GPCRDesensitizationInternalizationPackage) : Prop :=
  P.receptorPhosphorylation ∧ P.betaArrestinBinding ∧ P.internalizationViaEndocytosis ∧ P.receptorRecycling

theorem gpcr_desensitization_internalization_closed_from_evidence
    (P : GPCRDesensitizationInternalizationPackage) (E : GPCRDesensitizationInternalizationEvidence P) :
    GPCRDesensitizationInternalizationClosed P := by
  exact And.intro E.receptorPhosphorylationClosed
    (And.intro E.betaArrestinBindingClosed
      (And.intro E.internalizationViaEndocytosisClosed E.receptorRecyclingClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse