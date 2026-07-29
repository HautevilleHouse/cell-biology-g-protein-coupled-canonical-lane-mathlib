import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GPCRStructuralDynamicsPackage where
  sevenTransmembraneHelices : Prop
  extracellularLigandBindingPocket : Prop
  intracellularGProteinCouplingRegion : Prop
  conformationalSwitchUponActivation : Prop

structure GPCRStructuralDynamicsEvidence (P : GPCRStructuralDynamicsPackage) where
  sevenTransmembraneHelicesClosed : P.sevenTransmembraneHelices
  extracellularLigandBindingPocketClosed : P.extracellularLigandBindingPocket
  intracellularGProteinCouplingRegionClosed : P.intracellularGProteinCouplingRegion
  conformationalSwitchUponActivationClosed : P.conformationalSwitchUponActivation

def GPCRStructuralDynamicsClosed (P : GPCRStructuralDynamicsPackage) : Prop :=
  P.sevenTransmembraneHelices ∧ P.extracellularLigandBindingPocket ∧
  P.intracellularGProteinCouplingRegion ∧ P.conformationalSwitchUponActivation

theorem gpcr_structural_dynamics_closed_from_evidence
    (P : GPCRStructuralDynamicsPackage) (E : GPCRStructuralDynamicsEvidence P) :
    GPCRStructuralDynamicsClosed P := by
  exact And.intro E.sevenTransmembraneHelicesClosed
    (And.intro E.extracellularLigandBindingPocketClosed
      (And.intro E.intracellularGProteinCouplingRegionClosed
        E.conformationalSwitchUponActivationClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse