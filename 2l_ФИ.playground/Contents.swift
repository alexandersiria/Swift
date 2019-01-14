import Cocoa

// Домашнее задание #2

// 1. Написать функцию, которая определяет, четное число или нет.

var myArray = [23, 54, 51, 98, 54, 23, 32];
for myInt: Int in myArray{
    if myInt % 2 == 0 {
        print("\(myInt) is even number")
    } else {
        print("\(myInt) is odd number")
    }
}


// Еще версия решения первой задачи
func def (value: Int) {
    let x1 = value
    let x2 = x1 % 2
    _ = x2 == 0 ? print("even") : print("odd")
}

def(value: 4)

////////////////////////////////////////////////////////////////////////////////////



// 2. Написать функцию, которая определяет, делится ли число без остатка на 3
func def2(value: Int) {
    let d1 = value
    let d2 = d1 % 3
    _ = d2 == 0 ? print("true") : print("false")
}

def2(value: 4)

////////////////////////////////////////////////////////////////////////////////////



//3. Создать возрастающий массив из 100 чисел.
var array = [Int]()
var i = 0

while i < 100 {
    myArray.append(i + 1)
    i += 1
}

////////////////////////////////////////////////////////////////////////////////////


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for element in myArray where (element % 2 == 0) || (element % 3 == 0) {
    myArray.remove(at : (myArray.index(of: element)!))
}

////////////////////////////////////////////////////////////////////////////////////

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibo (n: Int) -> (Decimal) {
    if (n < 3) {
        return 1
    } else {
        var z1 : Decimal = 1, z2 : Decimal = 1, z:Decimal
        for _ in 3...n {
            z = z1 + z2
            z1 = z2
            z2 = z
        }
        return z2
    }
}

var fibArray = [Decimal]()
fibArray.append(0)
var n  = 100
for i in 1...n {
    fibArray.append(fibo(n: i))
}
print(fibArray)


//6. * Заполнить массив из 100 элементов различными простыми числами.

func block (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func blockArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if block(num: i) {
            results.append(i)
        }
        i += 1
    }
    
    return results
}
print (blockArray())

////////////////////////////////////////////////////////////////////////////////////
