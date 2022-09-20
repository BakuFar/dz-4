import Foundation

//dz#1

var stringNumTimesTwo = ""
var stringNumTimesThree = ""
var stringNumTimesFour = ""
var stringNumTimesFive = ""

for num in 1...1000 {
    if num % 2 == 0 {
        stringNumTimesTwo += "\(num),"
    }
}
for num in 1...1000 {
    if num % 3 == 0 {
        stringNumTimesThree += "\(num),"
    }
}
for num in 1...1000 {
    if num % 4 == 0 {
        stringNumTimesFour += "\(num),"
    }
}
for num in 1...1000 {
    if num % 5 == 0 {
        stringNumTimesFive += "\(num),"
    }
}

print(stringNumTimesTwo)
print(stringNumTimesThree)
print(stringNumTimesFour)
print(stringNumTimesFive)

//dz#2

var loan: Float = 1000000.0
var rate: Float = 24.0
var payment: Float = 20000.0
var countMonth = 0
var total: Float = 0.0

func twoMonth () {
    if loan > payment {
        loan += loan * (rate / 1200)
        countMonth += 1
        print("№\(countMonth) кредит-\(loan) выплата-\(payment) остаток-\(loan-payment)")
        loan -= payment
        total += payment
    }
    if loan > payment {
        loan += loan * (rate / 1200)
        payment += 2000
        countMonth += 1
        print("№\(countMonth) кредит-\(loan) выплата-\(payment) остаток-\(loan-payment)")
        loan -= payment
        total += payment
    }
    if loan < payment {
        loan += loan * (rate / 1200)
        payment = loan
        total += payment
        countMonth += 1
        print("№\(countMonth) кредит-\(loan) выплата-\(payment) остаток-\(loan-payment)")
        loan = 0
        payment = 0
        print("итого выплата -", total, "сом за", countMonth, "месяцев")

    }
}

func oneYear () {
    for _ in 1...6 {
        twoMonth()
    }
    rate -= 1
}

while loan - payment != 0 {
    oneYear()
}

//dop dz

var symbol = "Используя, условные, операторы, функции, и, циклы, создать, следующую, программу, записать, в, одну, переменную, 20, разных, слов, с, разной, длиной, через, запятую,"
var string = ""
var countSymbol = 0

for symbol in symbol {
    if symbol != "," {
        string += String(symbol)
        countSymbol += 1
    }
    if symbol == "," {
        print("\(string) - \(countSymbol-1) символов")
        string = ""
        countSymbol = 0
    }
}

//DZ#calculator

func calculator(num1: Double, sim: String, num2: Double) {
    if sim == "-" {
        print(num1, "-", num2, "=", num1 - num2)
    }
    else if sim == "+" {
        print(num1, "+", num2, "=", num1 + num2)
    }
    else if sim == "*" {
        print(num1, "*", num2, "=", num1 * num2)
    }
    else if sim == "/" {
        print(num1, "/", num2, "=", num1 / num2)
    }
    else if sim == "sin" {
        print(num1, "* sin", num2, "=", sinD * num1)
    }
    else if sim == "cos" {
        print(num1, "* cos", num2, "=", cosD * num1)
    }
    else if sim == "tan" {
        print(num1, "* tan", num2, "=", tanD * num1)
    }
    else if sim == "cot" {
        print(num1, "* cot", num2, "=", cotD * num1)
    }
    else {
        print("Введите правильный символ (+ - * / или sin, cos, tan, cot)")
    }
}

print("Введите число")
var num1 = readLine()!
print("Введите один из символов (+ - * / или sin, cos, tan, cot)")
var sim = readLine()!
print("Введите число")
var num2 = readLine()!

let sinD = (Double(num2)! * 4 * (180 - Double(num2)!)) / (40500 - Double(num2)! * (180 - Double(num2)!))
let cosD = ((90 - (Double(num2)!)) * 4 * (180 - (90 - Double(num2)!))) / (40500 - (90 - Double(num2)!) * (180 - (90 - Double(num2)!)))
let tanD = sinD / cosD
let cotD = cosD / sinD

calculator(num1: Double(num1)!, sim: sim, num2: Double(num2)!)
