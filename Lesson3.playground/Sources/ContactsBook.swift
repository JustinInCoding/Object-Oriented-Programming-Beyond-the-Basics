import Foundation

public class ContactsBook {
  private var contactsList: [ContactCard]
	private static var current: ContactsBook?
	
  private init() {
		self.contactsList = []
	}
	
	public class func singleton() -> ContactsBook {
		if current == nil {
			current = ContactsBook()
		}
		return current!
	}

  public func saveContact(contact: ContactCard) {
    contactsList.append(contact)
		contact.addObserver(self)
  }
	
	public func printContacts() {
//		print("Contacts Book has \(contactsList.count) entries")
		contactsList.forEach { contact in
			print(contact.contactInformation(), separator: "\n")
		}
	}
}

extension ContactsBook: Observer {
	public func subjectUpdated(subject: Subject) {
		let index = contactsList.firstIndex { contact in
			contact === subject
		}
		
		guard let index else {
			return
		}
		
		print("Contact at index \(index) has been updated")
	}
}
