import CellBiologyGProteinCoupledCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GProteinSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GProteinAdmittedObject where
  space : GProteinSpace
  ligand : Prop
  receptor : Prop
  gProtein : Prop
  activation : Prop
  conclusion : activation

structure GProteinEndgameState where
  object : GProteinAdmittedObject

def GProteinWitnessClosed (O : GProteinAdmittedObject) : Prop :=
  O.activation

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse