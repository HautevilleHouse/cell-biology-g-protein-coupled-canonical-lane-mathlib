import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure GProteinReceptorPackage where
  receptorType : Type u
  ligandBindingDomain : Type v
  transmembraneHelices : Prop
  gProteinCouplingMotif : Prop

structure GProteinReceptorEvidence (G : GProteinReceptorPackage) where
  transmembraneHelicesClosed : G.transmembraneHelices
  gProteinCouplingMotifClosed : G.gProteinCouplingMotif

def GProteinReceptorClosed (G : GProteinReceptorPackage) : Prop :=
  G.transmembraneHelices ∧ G.gProteinCouplingMotif

theorem g_protein_receptor_closed_from_evidence (G : GProteinReceptorPackage) (E : GProteinReceptorEvidence G) :
    GProteinReceptorClosed G := by
  exact And.intro E.transmembraneHelicesClosed E.gProteinCouplingMotifClosed

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse