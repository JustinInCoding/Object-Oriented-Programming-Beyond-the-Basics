import Foundation

public class CompanyContactCard: ContactCard {
	public convenience init(companyName: String, phoneNumber: String) {
		self.init(firstName: companyName, lastName: "", phoneNumber: phoneNumber)
		isCompany = true
	}
	
	public override func addRelatedContact(_ contact: ContactCard) {
		print("Calling super from Person")
		super.addRelatedContact(contact)
		if contact.isCompany {
			print("Other contact is a company too. Adding 2-way relationship")
			contact.relatedContacts.append(contactID)
		}
	}
}
