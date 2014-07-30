// Playground - noun: a place where people can play

import Cocoa

var data : [Int] = [10, 3, 2, 12, 5, 6]
func insertionSort<T : Comparable>(inout data : [T]) {
    for i in 1 ..< data.count {
        var value = data[i]
        var j = i - 1
        while j >= 0 && data[j] > value {
            data[j+1] = data[j]
            --j
        }
        data[j+1] = value
    }
}

insertionSort(&data)
data
