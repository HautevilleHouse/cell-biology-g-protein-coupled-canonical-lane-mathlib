import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GProteinActivationPackage where
  gProteinType : Type u
  gtpBindingAffinity : ℝ
  gdpGtpExchangeRate : ℝ
  subunitDissociationRate : ℝ
  downstreamEffectorActivation : Prop
  activationKineticsModel : Prop

structure GProteinActivationEvidence (G : GProteinActivationPackage) where
  activationKineticsModelClosed : G.activationKineticsModel

def GProteinActivationClosed (G : GProteinActivationPackage) : Prop :=
  G.activationKineticsModel

theorem g_protein_activation_closed_from_evidence (G : GProteinActivationPackage) (E : GProteinActivationEvidence G) :
    GProteinActivationClosed G := by
  exact E.activationKineticsModelClosed

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse