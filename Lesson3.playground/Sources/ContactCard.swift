import Foundation

public class ContactCard: Subject {
	public var observers: [Observer]
  let contactID: UUID
  var firstName: String
  var lastName: String
  var phoneNumber: String
  var relatedContacts: [UUID]
  public var isCompany: Bool

  public init(firstName: String, lastName: String, phoneNumber: String) {
    self.firstName = firstName
    self.lastName = lastName
    self.phoneNumber = phoneNumber
    contactID = UUID()
    relatedContacts = []
    isCompany = false
		observers = []
  }

  public func set(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
		broadcastUpdate()
  }

  public func set(phone: String) {
    phoneNumber = phone
		broadcastUpdate()
  }

  public func set(phone: Double) {
    phoneNumber = "\(phone)"
		broadcastUpdate()
  }

  public func addRelatedContact(_ contact: ContactCard) {
    relatedContacts.append(contact.contactID)
		broadcastUpdate()
//    if isCompany == contact.isCompany {
//      print("Both this contact and the new contact are the same type. Adding 2-way relationship")
//      contact.relatedContacts.append(contactID)
//    }
  }

  public func contactInformation() -> String {
    "Contact: FirstName: \(firstName), lastName: \(lastName), Phone: \(phoneNumber), Connections: \(relatedContacts.count)"
  }
  
}
