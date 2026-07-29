import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledCanonicalLaneLean

structure SecondMessengerPathway where
  adenylylCyclaseActivation : Prop
  campProduction : Prop
  pkaActivation : Prop
  phospholipaseCActivation : Prop
  ip3Production : Prop
  calciumRelease : Prop
  dagProduction : Prop
  pkcActivation : Prop

def SecondMessengerClosed (P : SecondMessengerPathway) : Prop :=
  P.adenylylCyclaseActivation ∧ P.campProduction ∧ P.pkaActivation ∧ P.phospholipaseCActivation ∧ P.ip3Production ∧ P.calciumRelease ∧ P.dagProduction ∧ P.pkcActivation

theorem second_messenger_closed_default (P : SecondMessengerPathway) (h1 : P.adenylylCyclaseActivation) (h2 : P.campProduction) (h3 : P.pkaActivation) (h4 : P.phospholipaseCActivation) (h5 : P.ip3Production) (h6 : P.calciumRelease) (h7 : P.dagProduction) (h8 : P.pkcActivation) : SecondMessengerClosed P := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 (And.intro h5 (And.intro h6 (And.intro h7 h8))))))

end CellBiologyGProteinCoupledCanonicalLaneLean
end HautevilleHouse