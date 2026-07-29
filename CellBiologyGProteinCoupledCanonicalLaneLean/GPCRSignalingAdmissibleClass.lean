import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GPCRAdmissibleObject where
  receptor : GPCRMembraneReceptor
  activationCycle : GProteinActivationCycle
  secondMessenger : SecondMessengerPathway
  desensitization : GRKArrestinDesensitization
  signalComplete : Prop

structure GPCRAdmissibleClass where
  object : GPCRAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def gPCRAdmittedClosure (A : GPCRAdmissibleClass) : Prop :=
  A.object.signalComplete ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse