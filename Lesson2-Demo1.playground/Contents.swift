var ehabContact = PersonContactCard(firstName: "Ehab", lastName: "Amer", phoneNumber: "1234567890")
var timContact = PersonContactCard(firstName: "Tim", lastName: "Condon", phoneNumber: "0987654321")
timContact.set(firstName: "Timothy", lastName: "Condon")
timContact.set(phone: "555-5555")
timContact.set(phone: 12345678.9)


ehabContact.addRelatedContact(timContact)

let containsTim = ehabContact.relatedContacts.contains(timContact.contactID)
let containsEhab = timContact.relatedContacts.contains(ehabContact.contactID)

//print("Ehab contact contains Tim contact: \(containsTim)")
//print("Tim contact contains Ehab contact: \(containsEhab)")

let kodeco = CompanyContactCard(companyName: "Kodeco", phoneNumber: "11111111111")
let razeware = CompanyContactCard(companyName: "Razeware", phoneNumber: "1111111111")

kodeco.addRelatedContact(razeware)
kodeco.addRelatedContact(ehabContact)

print(ehabContact.contactInformation())
print(kodeco.contactInformation())
print(razeware.contactInformation())

//var contactsBook = ContactsBook()
ContactsBook.current.saveContact(contact: ehabContact)
ContactsBook.current.saveContact(contact: timContact)
ContactsBook.current.saveContact(contact: kodeco)
ContactsBook.current.saveContact(contact: razeware)

