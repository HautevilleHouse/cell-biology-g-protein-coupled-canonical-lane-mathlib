import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GRKArrestinDesensitization where
  receptorPhosphorylation : Prop
  betaArrestinRecruitment : Prop
  receptorInternalization : Prop
  signalingTermination : Prop

def DesensitizationClosed (D : GRKArrestinDesensitization) : Prop :=
  D.receptorPhosphorylation ∧ D.betaArrestinRecruitment ∧ D.receptorInternalization ∧ D.signalingTermination

theorem desensitization_closed_default (D : GRKArrestinDesensitization) (h1 : D.receptorPhosphorylation) (h2 : D.betaArrestinRecruitment) (h3 : D.receptorInternalization) (h4 : D.signalingTermination) : DesensitizationClosed D := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse