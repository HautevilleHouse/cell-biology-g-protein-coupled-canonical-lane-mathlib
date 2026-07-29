import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GProteinActivationCycle where
  receptorActivation : Prop
  gdpGtpExchange : Prop
  effectorInteraction : Prop
  gtpHydrolysis : Prop
  receptorDesensitization : Prop

def GProteinCycleClosed (C : GProteinActivationCycle) : Prop :=
  C.receptorActivation ∧ C.gdpGtpExchange ∧ C.effectorInteraction ∧ C.gtpHydrolysis ∧ C.receptorDesensitization

theorem g_protein_cycle_closed_default (C : GProteinActivationCycle) (h1 : C.receptorActivation) (h2 : C.gdpGtpExchange) (h3 : C.effectorInteraction) (h4 : C.gtpHydrolysis) (h5 : C.receptorDesensitization) : GProteinCycleClosed C := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse