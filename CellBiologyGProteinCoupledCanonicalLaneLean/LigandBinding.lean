import CellBiologyGProteinCoupledCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure LigandBindingPackage where
  ligandReceptorAffinity : Prop
  bindingSiteOccupancy : Prop
  conformationalChange : Prop
  receptorActivationInitiated : Prop

structure LigandBindingEvidence (L : LigandBindingPackage) where
  ligandReceptorAffinityClosed : L.ligandReceptorAffinity
  bindingSiteOccupancyClosed : L.bindingSiteOccupancy
  conformationalChangeClosed : L.conformationalChange
  receptorActivationInitiatedClosed : L.receptorActivationInitiated

def LigandBindingClosed (L : LigandBindingPackage) : Prop :=
  L.ligandReceptorAffinity ∧ L.bindingSiteOccupancy ∧
  L.conformationalChange ∧ L.receptorActivationInitiated

theorem ligand_binding_closed_from_evidence (L : LigandBindingPackage)
    (E : LigandBindingEvidence L) : LigandBindingClosed L := by
  exact And.intro E.ligandReceptorAffinityClosed
    (And.intro E.bindingSiteOccupancyClosed
      (And.intro E.conformationalChangeClosed E.receptorActivationInitiatedClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse