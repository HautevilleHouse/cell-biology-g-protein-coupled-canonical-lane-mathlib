import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

def ConstrainedGPCRClosure (A : GPCRAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gpcr_endgame (A : GPCRAdmissibleClass) : ConstrainedGPCRClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse