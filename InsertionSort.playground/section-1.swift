// Playground - noun: a place where people can play

import Cocoa

func swap(var num1 : Int, var with num2 : Int) {
    var tmp = num1
    num1 = num2
    num2 = tmp
}

var data = [10, 3, 2, 12, 5, 6]
swap(data[10], with: data[6])
data



 
func sort(toSort : Int[]) {
    var current = toSort[0];
    for var i = 1; i<toSort.count; i++ {
        while current > toSort[i] && i < toSort.count {
            
        }
    }
}
