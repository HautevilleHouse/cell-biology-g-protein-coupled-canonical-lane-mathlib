import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GPCRSignalTransductionPackage where
  receptorActivation : Prop
  gProteinCycle : Prop
  signalAmplification : Prop
  desensitization : Prop

structure GPCRSignalTransductionEvidence (P : GPCRSignalTransductionPackage) where
  receptorActivationClosed : P.receptorActivation
  gProteinCycleClosed : P.gProteinCycle
  signalAmplificationClosed : P.signalAmplification
  desensitizationClosed : P.desensitization

def GPCRSignalTransductionClosed (P : GPCRSignalTransductionPackage) : Prop :=
  P.receptorActivation ∧ P.gProteinCycle ∧ P.signalAmplification ∧ P.desensitization

theorem gpcr_signal_transduction_closed_from_evidence
    (P : GPCRSignalTransductionPackage) (E : GPCRSignalTransductionEvidence P) :
    GPCRSignalTransductionClosed P := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.gProteinCycleClosed
      (And.intro E.signalAmplificationClosed E.desensitizationClosed))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse