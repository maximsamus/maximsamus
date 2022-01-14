import Foundation

//1. Решить квадратное уравнение.

print("1. Нам нужно решить квадратное уравнение : x² - 2x - 3 = 0")

let a = 1
let b = -2
let c = -3
let d = (b*b) - 4*a*c

print("Поскольку дискриминант - положительное число и равен \(d), уравнение имеет два корня:")

let squareRootFor_d = sqrt(Double(d))
let x1 = (-b + Int(squareRootFor_d)) / 2*a
let x2 = (-b - Int(squareRootFor_d)) / 2*a

print("Первый корень = \(x1) , второй = \(x2)")

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

print("2. Даны катеты прямоугольного треугольника равные 5 и 7. Найти площадь, периметр и гипотенузу треугольника.")

let katet1 = 5
let katet2 = 7

let s = Double(katet1) * Double(katet2)/2

let p = katet1 + katet2

//квадрат длины гипотенузы равен сумме квадратов длин катетов

let squareHypotenuse = katet1*katet1 + katet2*katet2
let hypotenuse = sqrt(Double(squareHypotenuse))
print("Площадь треугольника = \(s), периметр треугольника = \(p), гипотенуза = \(Float(hypotenuse))")


//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

print("Введите сумму вклада в банк:")
var value = readLine()

print("Введите годовой процент в виде числа:")
var percent = readLine()


var years = 1
if let valueValid = value, let percentValid = percent,
var valueInt = Int(valueValid), let percentInt = Int(percentValid){
  
    while (years < 6){
        valueInt += valueInt * (percentInt)/100
        years += 1
    }
    print("Сумма вклада через 5 лет = \(valueInt)")
    
} else {
    print("Нужно указать цифровые значения для вклада и %")
}
