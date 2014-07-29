// Playground - noun: a place where people can play

import Cocoa

var data = [10, 3, 2, 12, 5, 6]

func insertionSort<T : Comparable>(toSort : [T]) {
    for i in 1 ..< toSort.count {
        var value = toSort[i]
        var j = --i
        while j >= 0 && toSort[j] > value {
            toSort[++j] = toSort[j]
            --j
        }
        toSort[++j] = value
    }
}

insertionSort(data)
data
