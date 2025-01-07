func reduceArray<T, U>(array: [T], initial: U, _ combine: (U, T) -> U) -> U {
    guard !array.isEmpty else {
        return initial
    }
    return array.reduce(initial, combine)
}

let array = [1, 2, 3, 4, 5]
let sum = reduceArray(array: array, initial: 0, +)
print(sum) // Output: 15

let emptyArray: [Int] = []
let emptySum = reduceArray(array: emptyArray, initial: 0, +)
print(emptySum) // Output: 0

//This handles cases where initial value is not given. Giving a default value
func reduceArrayWithDefault<T: Numeric>(array: [T], _ combine: (T, T) -> T) -> T {
    guard !array.isEmpty else {
        return 0
    }
    return array.reduce(array[0], combine)
}
let anotherEmptySum = reduceArrayWithDefault(array: emptyArray, +) // Output 0
let array1 = [1,2,3,4,5]
let sum1 = reduceArrayWithDefault(array: array1, +) // Output 15