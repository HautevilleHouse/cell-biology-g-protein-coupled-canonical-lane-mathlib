import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure LigandBindingAssayPackage where
  ligandType : Type u
  receptorType : Type v
  bindingAffinity : ℝ
  saturationCurve : ℝ → ℝ
  hillCoefficient : ℝ
  bindingIsothermModel : Prop

structure LigandBindingAssayEvidence (L : LigandBindingAssayPackage) where
  bindingIsothermModelClosed : L.bindingIsothermModel

def LigandBindingAssayClosed (L : LigandBindingAssayPackage) : Prop :=
  L.bindingIsothermModel

theorem ligand_binding_assay_closed_from_evidence (L : LigandBindingAssayPackage) (E : LigandBindingAssayEvidence L) :
    LigandBindingAssayClosed L := by
  exact E.bindingIsothermModelClosed

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse