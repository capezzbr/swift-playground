// Playground - noun: a place where people can play

import Cocoa

class QuickSort<T : Comparable> : NSObject {
    var data : T[] = []
    
    func sort(values : T[]) {
        if values == nil || values.count == 0 {
            return;
        }
        
        self.data = values;
        quicksort(0, toIndex: values.count - 1);
    }
    
    func quicksortFromIndex(low : Int, toIndex : Int) {
        let high = toIndex
        var i = low
        var j = high
        let pivot = data[low + (high-low)/2];
    
        while (i <= j) {
            while data[i] < pivot {
                ++i;
            }
            
            while data[j] > pivot {
                --j;
            }
    
            if i <= j {
                exchangeElementAtIndex(i, withElementAtIndex: j);
                ++i;
                --j;
            }
        }
    
        if low < j {
            quicksort(low, toIndex: j);
        }
        if (i < high) {
            quicksort(i, toIndex: high);
        }
    }


    func exchangeElementAtIndex(i : Int, withElementAtIndex : Int) {
        let temp = data[i];
        data[i] = data[withElementAtIndex];
        data[withElementAtIndex] = temp;
    }
}

var data = [10, 3, 2, 12, 5, 6]
data

let quickSort : QuickSort<Int> = QuickSort()
quickSort.sort(data)
data


