import Foundation

var accountTotal: Float = 1_000_000.0

let name = "Andres"

let lastName = "Chavez"
let fullName = "\(name) \(lastName)"

print(fullName.capitalized)

accountTotal += 100_000

print(accountTotal)

var isActive = !fullName.isEmpty

print(isActive)

var transactions: [Float] = [20,10,100.0]

print(transactions)

transactions.isEmpty
transactions.append(40)

print(transactions)

transactions.first
transactions.last
transactions.removeLast()

print(transactions)

transactions.min()
transactions.max()

var transactionsDict: [String: [Float]] = [
    "1nov": [20,10,100.0],
    "2nov": [],
    "3nov": [1000],
    "4nov": [20,10,100.0],
    "5nov": [10],
    
]

print(transactions.count)

print(accountTotal)

accountTotal -= 300_000


if accountTotal > 1_000_000 {
    print("Somos ricos")
}else if accountTotal > 0 {
    print("No tenemos tanto dinero")
}else {
    print("No tenemos dinero")
}

let hasMoney = accountTotal > 1_000_000 ? "Somos ricos" : "No somos ricos"
print(hasMoney)

var age = 24
var tax = 1.0

switch age {
case 0...17:
    print("No podemos dar una tarjeta de credito")
case 18...22:
    tax = 2
    print("La tasa de interes es del 2")
case 23...25:
    tax = 1.5
    print("La tasa de interes es del 1.5%")
default:
    print("La tasa de interes es del 1%")
}


let bankType = "B"

switch bankType {
case "B":
    print("Es el banco B")
default:
    print("Es otro Banco")
}

var total: Float = 0
for transaction in transactions{
    total += (transaction * 100)
}

print(accountTotal)
accountTotal -= total
print(accountTotal)

var total2: Float = 0.0
for key in transactionsDict.keys {
    for transaction in transactionsDict[key]! where transaction < 20 {
        
        total2 += transaction
    
}
}

print(transactions)
var total3 = transactions.reduce(0.0) { (result, element) -> Float in
    return result + element
}


print(transactions.reduce(0.0, {return $0 + $1 }))
print(transactions.reduce(0.0, { $0 + $1 }))

print(transactions.reduce(0.0, + ))

print(total3)
print(transactionsDict)
print(total2)

var newTransaction = transactions.map {(element) -> Float in
    return element * 100
}
print(newTransaction)

print(transactions.sorted(by: >))

print(transactions.filter {(element) -> Bool in
    return element > 10
})

transactions.removeAll(where: {
    $0 > 10
})

var nombre: String?
print(nombre ?? "No tenemos nombre")

nombre = "Andres"
if let nombre = nombre{
    print(nombre)
}

print(nombre!)


