// приведение типов

var anyArray: [Any] = []
anyArray.append(1)
anyArray.append(true)
anyArray.append("dismiss")
anyArray.append(2)
anyArray.append(false)
anyArray.append("allow")
print(anyArray)

// 1 способ
for i in anyArray {
    if i is Int {
        print("Целое число - \(i)")
    } else if i is Bool {
        print("Булевое значение - \(i)")
    } else {
        print("Строковое значение - \(i)")
    }
}

// 2 способ
anyArray.forEach {
    if let i = $0 as? Int {
        print("Целое число - \($0)")
    } else if let i = $0 as? String {
        print("Это строка - \($0)")
    } else if let i = $0 as? Bool {
        print("Булевое значение - \($0)")
    }
}



// словарь с рандомными значениями [String: Any]

var randomDict = [String : Any]()
randomDict["25 years old"] = true
randomDict["Hasan"] = " is Muslim"
randomDict["country"] = "Turkey"
randomDict["10000 year old"] = false
randomDict["vesh"] = 1.5
randomDict["cel"] = 10


var total: Double = 0
//for (_, value) in randomDict {
//    if value is String {
//        total += 1
//    } else if value is Bool && value as? Bool == true {
//        total += 2
//    } else if value is Bool && value as? Bool == false {
//        total -= 3
//    }
//}


print(total)



// немного поменяли принцип работы! Прибавили к total количество символом строковых значений
for (_ , value) in randomDict {
    if let someValue = value as? String {
        total += Double(someValue.count)
    } else if let someValue = value as? Bool {
        continue
    } else if let someValue = value as? Int {
        total += Double(someValue)
    } else if let someValue = value as? Double {
        total += someValue
    }
}

print(total)





// задача 2





