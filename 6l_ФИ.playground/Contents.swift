import Cocoa

struct Team {
    var  position: String
    var salary: Int
}

extension Team: CustomStringConvertible {
    var description : String {
        return "Position: \(position), Salary: \(salary)"
    }
}


struct queue <T> {
    private var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T {
        return elements.removeLast()
    }
    
    public var head: T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("Last element is \(elements.last!)")
            return elements.last
        }
    }
    
    public var front: T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("First element is \(elements.first!)")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print(elements)
    }
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var coworker = queue<Team>()
coworker.enqueue(element: .init(position: "Operator", salary: 20000))
coworker.enqueue(element: .init(position: "Sale Manager", salary: 70000))
coworker.enqueue(element: .init(position: "VM", salary: 150000))
coworker.enqueue(element: .init(position: "Front End Dev", salary: 170000))
coworker.enqueue(element: .init(position: "iOS Dev", salary: 400000))
coworker.enqueue(element: .init(position: "Java Dev", salary: 250000))
coworker.enqueue(element: .init(position: "System Architect", salary: 90000))
coworker.enqueue(element: .init(position: "CEO", salary: 400000))

coworker.printMyQueue()
coworker.head
coworker.front

let highlyPaid = coworker.myFilter(predicate: {$0.salary == 400000})
print(highlyPaid)
