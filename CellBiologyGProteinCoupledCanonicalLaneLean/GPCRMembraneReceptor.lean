import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GPCRMembraneReceptor where
  receptorType : String
  sevenTransmembraneDomains : Prop
  ligandBindingSite : Prop
  gProteinCouplingInterface : Prop

def GPCRReceptorClosed (R : GPCRMembraneReceptor) : Prop :=
  R.sevenTransmembraneDomains ∧ R.ligandBindingSite ∧ R.gProteinCouplingInterface

theorem gpcR_receptor_closed_default (R : GPCRMembraneReceptor) (h1 : R.sevenTransmembraneDomains) (h2 : R.ligandBindingSite) (h3 : R.gProteinCouplingInterface) : GPCRReceptorClosed R := by
  exact And.intro h1 (And.intro h2 h3)

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse