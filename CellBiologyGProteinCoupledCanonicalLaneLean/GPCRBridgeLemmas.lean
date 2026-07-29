import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

def bridgeClosed (A : GPCRAdmissibleClass) : Prop :=
  A.object.signalComplete

theorem bridge_from_admissible_class (A : GPCRAdmissibleClass) : bridgeClosed A := by
  exact A.object.signalComplete

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse