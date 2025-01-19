import Test.Hspec
import HW1

main = hspec $ do
    describe "toDigits" $ do
        it "converts 1234 into [1, 2, 3, 4]" $
            toDigits 1234 `shouldBe` [1, 2, 3, 4]

        it "returns an empty list for 0" $
            toDigits 0 `shouldBe` []

        it "return an empty list for negative numbers" $
            toDigits (-17) `shouldBe` []

    describe "toDigitsRev" $ do
        it "converts 1234 into [4, 3, 2, 1]" $
            toDigitsRev 1234 `shouldBe` [4, 3, 2, 1]

        it "returns an empty list for 0" $
            toDigitsRev 0 `shouldBe` []

        it "return an empty list for negative numbers" $
            toDigitsRev (-17) `shouldBe` []
