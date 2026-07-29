import canonicalLaneMathlib.AdmissibleClass
import CellBiologyGProteinCoupledCanonicalLaneLean.ReceptorDensityDynamics
import CellBiologyGProteinCoupledCanonicalLaneLean.LigandBindingAssays
import CellBiologyGProteinCoupledCanonicalLaneLean.GProteinActivation
import CellBiologyGProteinCoupledCanonicalLaneLean.SecondMessengerCascade
import CellBiologyGProteinCoupledCanonicalLaneLean.SignalTermination

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

def ConstrainedGPCRClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gpcr_endgame (A : AdmissibleClass) :
    ConstrainedGPCRClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse