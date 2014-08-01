// Playground - noun: a place where people can play

import Cocoa

class QuickSort<T : Comparable> {
    
    public var data : [T]
    
    public init() {
        self.data = []
    }
    
    public func sort() {
        if data.count == 0 {
            return
        }
        quickSort(0, high: data.count - 1)
    }
    
    private func quickSort(low : Int, high : Int) {
        var i = low
        var j = high
        let pivot = data[low + (high - low) / 2]
        
        while i <= j {
            while data[i] < pivot {
                ++i
            }
            while data[j] > pivot {
                --j
            }
            if i <= j {
                swapItemAtIndex(i, withElementAtIndex: j)
                ++i
                --j
            }
        }
        
        if low < j {
            quickSort(low, high: j)
        }
        if i < high {
            quickSort(i, high: high)
        }
    }
    
    private func swapItemAtIndex(index : Int, withElementAtIndex : Int) {
        let temp = data[index];
        data[index] = data[withElementAtIndex];
        data[withElementAtIndex] = temp;
    }
}

var quickSort = QuickSort<Int>()
quickSort.data = [10, 3, 2, 12, 5, 6]
quickSort.sort()
quickSort.data





