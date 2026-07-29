import CellBiologyGProteinCoupledCanonicalLaneLean.LigandBinding

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure ReceptorDynamicsPackage {L : LigandBindingPackage} where
  receptorDesensitization : Prop
  receptorInternalization : Prop
  receptorRecycling : Prop
  signalTermination : Prop

structure ReceptorDynamicsEvidence {L : LigandBindingPackage} (R : ReceptorDynamicsPackage L) where
  receptorDesensitizationClosed : R.receptorDesensitization
  receptorInternalizationClosed : R.receptorInternalization
  receptorRecyclingClosed : R.receptorRecycling
  signalTerminationClosed : R.signalTermination

def ReceptorDynamicsClosed {L : LigandBindingPackage} (R : ReceptorDynamicsPackage L) : Prop :=
  R.receptorDesensitization ∧ R.receptorInternalization ∧
  R.receptorRecycling ∧ R.signalTermination

theorem receptor_dynamics_closed_from_evidence {L : LigandBindingPackage}
    (R : ReceptorDynamicsPackage L) (E : ReceptorDynamicsEvidence R) :
    ReceptorDynamicsClosed R := by
  exact And.intro E.receptorDesensitizationClosed
    (And.intro E.receptorInternalizationClosed
      (And.intro E.receptorRecyclingClosed E.signalTerminationClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse