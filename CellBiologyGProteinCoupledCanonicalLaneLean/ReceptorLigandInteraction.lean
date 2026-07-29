import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

/-!
# Receptor-Ligand Interaction Package

This module defines the binding kinetics and specificity of GPCR-ligand interactions.
-/

structure ReceptorLigandPackage where
  bindingAffinity : Prop
  specificity : Prop
  allostericModulation : Prop
  desensitization : Prop

structure ReceptorLigandEvidence (R : ReceptorLigandPackage) where
  bindingAffinityClosed : R.bindingAffinity
  specificityClosed : R.specificity
  allostericModulationClosed : R.allostericModulation
  desensitizationClosed : R.desensitization

def ReceptorLigandClosed (R : ReceptorLigandPackage) : Prop :=
  R.bindingAffinity ∧ R.specificity ∧ R.allostericModulation ∧ R.desensitization

theorem receptor_ligand_closed_from_evidence (R : ReceptorLigandPackage) (E : ReceptorLigandEvidence R) : ReceptorLigandClosed R :=
  And.intro E.bindingAffinityClosed
    (And.intro E.specificityClosed
      (And.intro E.allostericModulationClosed E.desensitizationClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse