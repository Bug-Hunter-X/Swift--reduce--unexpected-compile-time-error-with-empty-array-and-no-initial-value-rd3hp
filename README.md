# Swift 'reduce' Unexpected Behavior with Empty Arrays

This repository demonstrates an unexpected behavior in Swift's `reduce` function when applied to an empty array without providing an initial value.  While reducing a non-empty array works as expected, attempting to reduce an empty array without specifying an initial value results in a compile-time error. This behavior might be counter-intuitive to developers familiar with functional programming paradigms where a default value is often returned in such cases.

The example code shows how this error occurs and how it can be addressed.