import Test.Hspec ( hspec, describe, it, shouldBe )
import HW1

main = hspec $ do
    describe "doubleEveryOther" $ do
        it "converts [8,7,6,5] into [16, 7, 12, 5]" $
            doubleEveryOther [8,7,6,5] `shouldBe` [16, 7, 12, 5]

        it "converts [1,2,3] into [1, 4, 3]" $
            doubleEveryOther [1,2,3] `shouldBe` [1, 4, 3]
