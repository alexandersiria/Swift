import Cocoa

//1
//Квадратичная функция имеет вид: ax2+bx+c=0
//Формула дискриминанта: D=b2-4ac

let a = 1 //коэффициент а
let b = -8 //коэффициент b
let c = 7 //коэффициент c
let bSqr = b*b  // определяем значение в квадрате

let dsmnt = bSqr - 4*a*c // дискриминант
let qNum = sqrt(Double(dsmnt))  // корень из дискриминанта
let x1 = (Double(-b) + qNum) / Double(2*a)
let x2 = (Double(-b) - qNum) / Double(2*a)
let x3 = (Double(-b)) / Double(2*a)
if dsmnt == 0 {
    print(x3)
} else if dsmnt < 0 {
    print(x2, x1)
} else {
    print(dsmnt)
}


//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let catA = 11 //длина катета А
let catB = 22 //длина катета B
let arr = (Double)(catA * catB) / 2.0 //Площадь треугольника
let hypotenuse = sqrt((Double)(catA * catA) + (Double)(catB * catB))
let perimeter = (Double)(catB + catA) + hypotenuse

//3. *Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.


var deposit  = 100.0
var years = 1
let percent  = 10.0
while years <= 5 {
    let onePercent = deposit / 100.0 //один процент вклада
    let income = onePercent * percent
    deposit = deposit + income //  сумма вклада через год
    years += 1
}
print(deposit)
