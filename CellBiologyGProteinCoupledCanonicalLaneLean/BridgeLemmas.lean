import HautevilleHouse.CellBiologyGProteinCoupledCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GPCRWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse