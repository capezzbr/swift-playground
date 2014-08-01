// Playground - noun: a place where people can play

import Cocoa

//func quicksort<T : Comparable>(data : [T]) {
//    if data.count == 0 {
//        return
//    }
//    
//    self.data = data
//    quickSort(0, toIndex: values.count - 1)
//}

func quickSort<T : Comparable>(inout data : [T], low : Int, high : Int) {
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
            swapItemAtIndex(&data, i, j)
            ++i
            --j
        }
    }
    
    if low < j {
        quickSort(&data, low, j)
    }
    if i < high {
        quickSort(&data, i, high)
    }
}

func swapItemAtIndex<T : Comparable>(inout data : [T], index : Int, withElementAtIndex : Int) {
    let temp = data[index];
    data[index] = data[withElementAtIndex];
    data[withElementAtIndex] = temp;
}

var data = [10, 3, 2, 12, 5, 6]
quickSort(&data, 0, data.count-1)
