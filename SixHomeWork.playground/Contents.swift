import UIKit

class Deque<Template> {

    private var list: [Template] = []
    
    func pushFront(val: Template) {
        if list.isEmpty {
            list.append(val)
        } else {
            list.insert(val, at: 0)
        }
    }
    
    func pushBack(val: Template) {
        if list.isEmpty {
            list.append(val)
        } else {
            list.append(val)
        }
    }
    
    func popFront() -> Template? {
        if !list.isEmpty {
            return list.removeFirst()
        } else {
            return nil
        }
    }
    
    func popBack() -> Template? {
        if !list.isEmpty {
            return list.removeLast()
        } else {
            return nil
        }
    }
    
    func isEmpty() -> Bool {
        if list.isEmpty {
            return true
        } else {
            return false
        }
    }
    
    func clear() {
        list = []
    }
}

let intDeque = Deque<Int>()
intDeque.pushFront(val: 2)
intDeque.pushBack(val: 3)
intDeque.pushBack(val: 4)
print(intDeque.popFront())
print(intDeque.popBack())
print(intDeque.isEmpty())

let doubleDeque = Deque<Double>()
doubleDeque.pushFront(val: 2.2)
doubleDeque.pushFront(val: 1.35)
print(doubleDeque.popFront())
doubleDeque.clear()
print(doubleDeque.isEmpty())
