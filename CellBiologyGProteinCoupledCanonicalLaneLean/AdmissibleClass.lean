import HautevilleHouse.CellBiologyGProteinCoupledCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure AdmissibleClass where
  object : GPCRAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GPCRWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse