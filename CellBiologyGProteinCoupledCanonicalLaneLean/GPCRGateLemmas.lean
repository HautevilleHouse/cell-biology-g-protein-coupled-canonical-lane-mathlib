import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

def gateClosed (A : GPCRAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GPCRAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse