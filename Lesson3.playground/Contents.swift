let ehabContact = ContactsFactory.createPersonContact(firstName: "Ehab", lastName: "Amer", phoneNumber: "1234567890")
let timContact = ContactsFactory.createPersonContact(firstName: "Tim", lastName: "Contact", phoneNumber: "0987654321")

ehabContact.addRelatedContact(timContact)

print(ehabContact.contactInformation())
print(timContact.contactInformation())

let kodeco = ContactsFactory.createCompanyContact(companyName: "Kodeco", phoneNumber: "1111111111")
let razeware = ContactsFactory.createCompanyContact(companyName: "Razeware", phoneNumber: "2222222222")

kodeco.addRelatedContact(razeware)
kodeco.addRelatedContact(ehabContact)

//print(kodeco.contactInformation())
//print(razeware.contactInformation())

timContact.set(firstName: "Tim", lastName: "Condon")
timContact.set(phone: "555-5555")
ehabContact.set(phone: 12345679.0)

let book1 = ContactsBook.singleton()
let book2 = ContactsBook.singleton()
let book3 = ContactsBook.singleton()
let book4 = ContactsBook.singleton()

book1.saveContact(contact: ehabContact)
book2.saveContact(contact: timContact)
book3.saveContact(contact: kodeco)
book4.saveContact(contact: razeware)

//book1.printContacts()

ehabContact.set(phone: "3333333333")
ehabContact.set(phone: 44444444444.0)
timContact.set(firstName: "Nick", lastName: "Fury")
