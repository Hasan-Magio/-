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
class Workout {
    let time: Double
    let distance: Double
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
    
}

class Run: Workout {
    let cadence: Double
    
    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {
    let stroke: String
    
    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}
var workouts: [Workout] = [
    Run(cadence: 100, time: 1200, distance: 24000),
    Swim(stroke: "Butterfly", time: 100, distance: 1000),
    Swim(stroke: "Free stroke", time: 200, distance: 2000),
    Swim(stroke: "Vacok", time: 400, distance: 13000),
    Run(cadence: 200, time: 700, distance: 3000)

]

func describeRun(runningWorkout: Run) {
    print("Running Workout")
    print("cadence will be \(runningWorkout.cadence)")
    print("time will be \(runningWorkout.time)")
    print("distance \(runningWorkout.distance)")
}

func describeSwim(swimmingWorkout: Swim) {
    print("Swimming Workout")
    print("""
We need \(swimmingWorkout.stroke).
OK?
""")
    print("time will be \(swimmingWorkout.time)")
    print("distance \(swimmingWorkout.distance)")
}

for work in workouts {
    if let runningWorkout = workouts as? Run {
        describeRun(runningWorkout: runningWorkout)
    } else if let swimmingWorkout = workouts as? Swim {
        describeSwim(swimmingWorkout: swimmingWorkout)
    }
}
