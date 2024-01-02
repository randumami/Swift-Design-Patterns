//
//  Observer Pattern.swift
//  
//
//  Created by Soren Randum on 01/01/2024.
//

import Foundation

protocol Observer {
    func update()
}

class ConcreteObserver: Observer {
    func update() {
        print("Received an update")
    }
}

class Subject {
    private var observers = [Observer]()

    func addObserver(_ observer: Observer) {
        observers.append(observer)
    }

    func notifyObservers() {
        observers.forEach { $0.update() }
    }
}

let subject = Subject()
let observer = ConcreteObserver()
subject.addObserver(observer)
subject.notifyObservers()


// prints
// Received an update

