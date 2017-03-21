# CodilitySwift
A few solutions to several [Codility](https://codility.com) Lessons - training algorithms and coding exercises. 

Included solutions for:

* Binary Gap https://codility.com/programmers/lessons/1-iterations/
* Odd Occurences in Array and Cyclic Rotation https://codility.com/programmers/lessons/2-arrays/
* Frog Jump , Permutation Missing Element and Tape Equilibrium https://codility.com/programmers/lessons/3-time_complexity/

## Use: 
clone or download and open the playground in XCode

## View the code directly:

* [BinaryGap](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/BinaryGap.xcplaygroundpage/Contents.swift)
* [CyclicRotation](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/CyclicRotation.xcplaygroundpage/Contents.swift)
* [FrogJump](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/FrogJump.xcplaygroundpage/Contents.swift)
* [OddOccurencesInArray](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/OddOccurencesInArray.xcplaygroundpage/Contents.swift)
* [PermMissingElem](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/PermMissingElem.xcplaygroundpage/Contents.swift)
* [TapeEquilibrium](https://github.com/alexbrie/Codility-Swift-3/blob/master/CodilityTests.playground/Pages/TapeEquilibrium.xcplaygroundpage/Contents.swift)

## Personal observation:

Coding practice in Swift playgrounds is pretty great, you don't have to compile or something, just type away and get instant feedback on your code's correctness.
Swift is a decent language for practicing algorithms and practicing algorithms with it will make you a better iOS programmer overall. 

But for the love of God, don't make the same mistake I did thinking it can be used for a LIVE / REAL coding challenge. It can't. You'll get stuck or discover weird bugs around Doubles - such as Int((4.0 - 3.14) * 100) gives 85 and not 86, waste precious time with type converstions and, most important, discover there's no way you can enter a multi-line string as input to your playground problem.

This cost me a job interview, by the way.
So, be warned - do practice Swift, do use it for your job, but whenever possible, avoid it for coding challenges.