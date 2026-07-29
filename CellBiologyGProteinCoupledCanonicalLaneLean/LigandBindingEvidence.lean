import HautevilleHouse.CellBiologyGProteinCoupledCanonicalLaneLean.GProteinSignalTransduction

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure LigandBindingPackage where
  ligand : String
  receptor : GProteinCoupledReceptor
  bindingAffinity : Prop
  bindingAffinityTerm : bindingAffinity
  inducedConformationalChange : Prop
  inducedConformationalChangeTerm : inducedConformationalChange

structure LigandBindingEvidence (L : LigandBindingPackage) where
  bindingAffinityClosed : L.bindingAffinity
  inducedConformationalChangeClosed : L.inducedConformationalChange

def LigandBindingClosed (L : LigandBindingPackage) : Prop :=
  L.bindingAffinity ∧ L.inducedConformationalChange

theorem ligand_binding_closed_from_evidence (L : LigandBindingPackage)
    (E : LigandBindingEvidence L) : LigandBindingClosed L := by
  exact And.intro E.bindingAffinityClosed E.inducedConformationalChangeClosed

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse