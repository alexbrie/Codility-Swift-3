# CodilitySwift
A few solutions to several [Codility](https://codility.com) Lessons - training algorithms and coding exercises. 

Included solutions for problems in 

* https://codility.com/programmers/lessons/1-iterations/
* https://codility.com/programmers/lessons/2-arrays/
* https://codility.com/programmers/lessons/3-time_complexity/
* https://codility.com/programmers/lessons/4-counting_elements/
* https://codility.com/programmers/lessons/5-prefix_sums/
* https://codility.com/programmers/lessons/6-sorting/
* https://codility.com/programmers/lessons/12-euclidean_algorithm/
* https://codility.com/programmers/lessons/99-future_training/

## Use: 
Clone repository or download and unzip archive. Open the playground in XCode 8.2 or more recent. The result for the tests is displayed in the right column of the playground, you might need to drag it a bit to expand it.

## View the code directly:

* [BinaryGap](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/BinaryGap.xcplaygroundpage/Contents.swift)
* [CyclicRotation](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/CyclicRotation.xcplaygroundpage/Contents.swift)
* [FrogJump](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/FrogJump.xcplaygroundpage/Contents.swift)
* [OddOccurencesInArray](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/OddOccurencesInArray.xcplaygroundpage/Contents.swift)
* [PermMissingElem](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/PermMissingElem.xcplaygroundpage/Contents.swift)
* [TapeEquilibrium](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/TapeEquilibrium.xcplaygroundpage/Contents.swift)
* [FrogRiverOne](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/FrogRiverOne.xcplaygroundpage/Contents.swift)
* [MissingInteger](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/MissingPositiveInt.xcplaygroundpage/Contents.swift)
* [MaxCounters](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/MaxCounters.xcplaygroundpage/Contents.swift)
* [CountDiv](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/CountDiv.xcplaygroundpage/Contents.swift)
* [PassingCars](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/PassingCars.xcplaygroundpage/Contents.swift)
* [Distinct](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/Distinct.xcplaygroundpage/Contents.swift)
* [MaxProductOfThree](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/MaxProductOfThree.xcplaygroundpage/Contents.swift)
* [Triangle](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/Triangle.xcplaygroundpage/Contents.swift)
* [ChocolatesByNumbers](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/ChocolatesNumbers.xcplaygroundpage/Contents.swift)
* [TreeHeight](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/TreeHeight.xcplaygroundpage/Contents.swift)
* [BinTreeAmplitude](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/BinTreeAmplitude.xcplaygroundpage/Contents.swift)


## Personal conclusion:

Coding practice in Swift playgrounds is pretty great, you don't have to compile or something, just type away and get instant feedback on your code's correctness.
Swift is a decent language for practicing algorithms and practicing algorithms with it will make you a better iOS programmer overall. 

But for the love of God, don't make the same mistake I did thinking it can be used for a LIVE / REAL coding challenge. It can't. You'll get stuck or discover weird bugs around Doubles - such as Int((4.0 - 3.14) * 100) gives 85 and not 86, waste precious time with casting types and, most important, discover there's no way you can enter a multi-line string as input to your playground problem.

This cost me a job interview, by the way.
So, be warned - do practice Swift, do use it for your job, but whenever possible, avoid it for coding challenges.