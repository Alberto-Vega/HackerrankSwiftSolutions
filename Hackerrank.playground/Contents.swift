import UIKit

//: Arrays - DS
/*
var input = "1 2 3 4"

// read array
let arr = input.characters.split(separator: " ").map(String.init)
// iterate over the array in reverse order and print the elements separated by space
    for index in (0..<arr.count).reversed() {
        print(arr[index], terminator: " ")
    }

var input2 = "1, 1, 1, 0, 0, \n 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0"

*/

//: Simple Array Sum
/*
var inputArray = [1, 2, 3, 4, 10, 11]

var sum = 0

for element in inputArray {
    // sum the array elements
    sum += element
}

// print the array elements
print(sum)
*/

//: Complare the triplets.
/*
// This is how you get the sample input in Hackerrank. Doesnt work in the playground. I guess you could maybe build a terminal app to use this.
//var a = readLine()!.characters.split(" ").map{Int(String($0))!}
//var b = readLine()!.characters.split(" ").map{Int(String($0))!}

// This two arrays are what I'm using to run the code in the playground
let a = [5, 6, 7]
let b =   [3, 6, 10]

var alice = 0
var bob = 0

for index in 0...2 {

    if a[index] > b[index] {
        alice += 1
    }
    if a[index] < b[index] {
        bob += 1
    }
}

print(alice, bob)
*/

//: A Very Big Sum.
/*
let arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
let n = arr.count

// variable to hold the sum of the array elements
var sum: Int64 = 0
// In a 64 bit architecture Int works as a Int64 so there is no overflow in this case.
for i in 0...n-1 {
    // sum the array elements
    sum += arr[i]
}

// print the array elements
print(sum)

*/

//: Diagonal Difference
/*
var arr = [[11,2,4],
           [4,5,6],
           [10,8,-12]]
var primaryDiagonalSum = 0
var secondaryDiagonalSum = 0

for row in 0..<arr.count {
    primaryDiagonalSum += arr[row][row]
 secondaryDiagonalSum += arr[row][arr.count - (row + 1)]
}

print(abs(primaryDiagonalSum - secondaryDiagonalSum))

*/

//: Plus Minus
/*
var numbers = [-4, 3, -9, 0, 4, 1 ]
var negative = 0
var positive = 0
var zeros = 0

for number in numbers {
    if number > 0 {
        positive += 1
    }
    else if number < 0 {
        negative += 1
    }
    else {
        zeros += 1
    }
}
var negativePercentage = (Double(positive) / Double(numbers.count))
var positivePercentage = (Double(negative) / Double(numbers.count))
var zerosPercentage = (Double(zeros) / Double(numbers.count))

print(String(format: "%.6f", positivePercentage))
print(String(format: "%.6f", negativePercentage))
print(String(format: "%.6f", zerosPercentage))
*/

//: Staircase
/*
var n = 4
var rowArray = Array(repeating: "#", count: n)
var matrix = Array(repeating: rowArray, count: n)

var emptySpaces = n - 1
for row in 0..<n {
    for column in 0..<emptySpaces {
        matrix[row][column] = " "
    }
    emptySpaces -= 1
}

func printMatrix(matrix: [[String]]) {
    for row in 0..<matrix.count {
        for column in 0..<matrix[row].count {
            Swift.print(matrix[row][column], terminator: "")
        }
        Swift.print("")
    }
}

printMatrix(matrix: matrix)
 */

//: Time Conversion

/*
var s = "07:05:45PM"
var sArray = s.components(separatedBy: ":")

var hours = sArray[0]
var minutes = sArray[1]
var index = s.index(sArray[1].endIndex, offsetBy: 1)
var seconds = sArray[2].substring(to: index)
var meridian = sArray[2].substring(from: index)

if meridian == "AM" {
    print("\(hours):\(minutes):\(seconds)")
} else {
    print("\(Int(hours)! + 12):\(minutes):\(seconds)")
}
 
 */

//: Circular Array Rotation
/*
 The test case 4 has k bigger than n, which causes segmentation error due to index out of bounds when you do n - k. Solved the problem by setting k = k % n when it is larger than n.
 
 This is how you get the input from hackerrank instead of my hardcoded input.
 var arr = readLine()!.characters.split(" ").map{Int(String($0))!}
 var array = readLine()!.characters.split(" ").map{Int(String($0))!}
 let n = arr[0]
 var k = arr[1]
 let q = arr[2]
 if k > n {
 k = k % n
 }
 for i in 1...q {
 var m = Int(readLine()!)!
 if m-k >= 0 {
 print(array[m - k])
 }
 else {
 print(array[m - k + n])
 }
 }
 */
var n = 4 // array length
var k = 2 // number of rotations
var q = 4 // number of queries (number of indexes to print)
var array = [1, 2, 3, 4]
// test cases where k is greater than n it
if k > n {
    k = k % n
}

for m in 0..<n {
if m-k >= 0 {
print(array[m - k])
}
else {
print(array[m - k + n])
}
}


//: Super Reduced String
// var a = String(readLine()!)



var sampleString = "aa"
var sampleString1 = "baab"
var sampleString2 = "aaabccddd"
var charArray =  Array(sampleString.characters)

func superReduce(string: String) {
var charArray =  Array(string.characters)

var index = 0
 while index + 1 < charArray.count  {
    if  charArray[index] == charArray[index + 1] {
        charArray.remove(at: index)
        charArray.remove(at: index)
    } else {
        index += 1
    }
}
    if charArray.count == 2 && charArray[0] == charArray[1] || charArray.isEmpty {
        print("Empty String")
        return
    }
print(String(charArray))
}

superReduce(string: sampleString)

/*:
 Mini-Max Sum Hackerrank
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
 
 Input Format
 
 A single line of five space-separated integers.
 
 Constraints
 
 Each integer is in the inclusive range [1,10^9].
 Output Format
 
 Print two space-separated long integers denoting the respective minimum and maximum values that can be calculated by summing exactly four of the five integers. (The output can be greater than 32 bit integer.)
 
 Sample Input
 
 1 2 3 4 5
 Sample Output
 
 10 14
 Explanation
 
 Our initial numbers are 1, 2, 3, 4, and 5. We can calculate the following sums using four of the five integers:
 
 If we sum everything except 5, our sum is 1+2+3+4=10.
 If we sum everything except 4, our sum is 1+2+3+5=11.
 If we sum everything except 3, our sum is 1+2+4+5=12.
 If we sum everything except 2, our sum is 1+3+4+5=13.
 If we sum everything except 1, our sum is 2+3+4+5=12.
 As you can see, the minimal sum is 10 and the maximal sum is 14. Thus, we print these minimal and maximal sums as two space-separated integers on a new line.
 
 Hints: Beware of integer overflow! Use 64-bit Integer.
 
 We can minimize the sum by excluding the largest element from the sum.
 We can maximize the sum by excluding the smallest element from the sum.
 
 So we can just find min and max number and substract them from the total sum so we can find the total.
 
 */

func minMaxSum(numbers:[Int]) {
    if numbers.count < 5 {
        return
    }
    // create a min and max variables and set them to the first item in the array.
    // These will keep track of the smallest and largest numbers.
    // create a totalSum variable to sum all the numbers in the array
    
    var minimum = numbers[0], maximum = numbers[0], totalSum = 0
    // Iterate the array and at each step:
    for number in numbers {
        // Add the current number to the totalSum.
        totalSum += number
        // compare the current number to min and max variables and update
        // them if necessary.
        
        minimum = min(minimum, number)
        maximum = max(maximum, number)
    }
    print("\(totalSum-maximum) \(totalSum-minimum)")
}

//In hackerrank you have to run it like this:
// read the sample input array from stdin:
// var numericArray = readLine()!.characters.split(separator:" ").map{Int(String($0))!}
//call the function passint numeric array
// minMaxSum(numbers: numericArray)

minMaxSum(numbers: [1,2,3,4,5])
