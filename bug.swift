let array = [1, 2, 3, 4, 5]

let sum = array.reduce(0, +)

print(sum) // Output: 15

// Unexpected behavior when array is empty
let emptyArray: [Int] = []

let emptySum = emptyArray.reduce(0, +) 

print(emptySum) // Output: 0 (This is expected)

// But, what if the initial value is not provided?
let anotherEmptySum = emptyArray.reduce(+) // Compile-time error