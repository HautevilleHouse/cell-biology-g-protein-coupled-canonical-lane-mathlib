import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure LigandBindingDynamicsPackage where
  ligandConcentration : Type u
  bindingAffinity : Type v
  bindingKinetics : Prop
  conformationalChange : Prop
  downstreamSignaling : Prop

structure LigandBindingDynamicsEvidence (L : LigandBindingDynamicsPackage) where
  bindingKineticsClosed : L.bindingKinetics
  conformationalChangeClosed : L.conformationalChange
  downstreamSignalingClosed : L.downstreamSignaling

def LigandBindingDynamicsClosed (L : LigandBindingDynamicsPackage) : Prop :=
  L.bindingKinetics ∧ L.conformationalChange ∧ L.downstreamSignaling

theorem ligand_binding_dynamics_closed_from_evidence (L : LigandBindingDynamicsPackage)
    (E : LigandBindingDynamicsEvidence L) : LigandBindingDynamicsClosed L := by
  exact And.intro E.bindingKineticsClosed (And.intro E.conformationalChangeClosed E.downstreamSignalingClosed)

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse