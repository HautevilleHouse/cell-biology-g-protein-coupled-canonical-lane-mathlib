import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  ligandAffinity : Prop
  bindingKinetics : Prop
  conformationalChange : Prop
  bindingSpecificity : Prop

structure ReceptorLigandBindingEvidence (P : ReceptorLigandBindingPackage) where
  ligandAffinityClosed : P.ligandAffinity
  bindingKineticsClosed : P.bindingKinetics
  conformationalChangeClosed : P.conformationalChange
  bindingSpecificityClosed : P.bindingSpecificity

def ReceptorLigandBindingClosed (P : ReceptorLigandBindingPackage) : Prop :=
  P.ligandAffinity ∧ P.bindingKinetics ∧ P.conformationalChange ∧ P.bindingSpecificity

theorem receptor_ligand_binding_closed_from_evidence
    (P : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence P) :
    ReceptorLigandBindingClosed P := by
  exact And.intro E.ligandAffinityClosed
    (And.intro E.bindingKineticsClosed
      (And.intro E.conformationalChangeClosed E.bindingSpecificityClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse