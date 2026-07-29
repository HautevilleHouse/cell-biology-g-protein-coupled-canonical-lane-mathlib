import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GProteinCoupledReceptor where
  receptorType : String
  gProteinType : String
  ligandBinding : Prop
  conformationalChange : Prop
  signalingCascadeInitiated : Prop

structure GPCRAdmissibleObject where
  receptor : GProteinCoupledReceptor
  pathwayActive : Prop
  secondMessengerProduced : Prop
  conclusion : pathwayActive ∧ secondMessengerProduced

def GPCRWitnessClosed (O : GPCRAdmissibleObject) : Prop :=
  O.pathwayActive ∧ O.secondMessengerProduced

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse