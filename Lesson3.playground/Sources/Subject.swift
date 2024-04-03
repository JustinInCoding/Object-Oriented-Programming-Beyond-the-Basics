import Foundation

public protocol Subject: AnyObject {
	var observers: [Observer] { set get }
	func addObserver(_ obj: Observer)
	func removeObserver(_ obj: Observer)
	func broadcastUpdate()
}

public extension Subject {
	func addObserver(_ obj: Observer) {
		observers.append(obj)
	}
	
	func removeObserver(_ obj: Observer) {
		observers.removeAll { item in
			item === obj
		}
	}
	
	func broadcastUpdate() {
		observers.forEach { observer in
			observer.subjectUpdated(subject: self)
		}
	}
}
