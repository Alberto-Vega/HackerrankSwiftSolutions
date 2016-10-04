import UIKit

//: Arrays - DS

var input = "1 2 3 4"

// read array
let arr = input.characters.split(separator: " ").map(String.init)
// iterate over the array in reverse order and print the elements separated by space
    for index in (0..<arr.count).reversed() {
        print(arr[index], terminator: " ")
    }





