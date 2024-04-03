import Foundation

public class ContactsFactory {
	public class func createPersonContact(
		firstName: String,
		lastName: String,
		phoneNumber: String
	) -> ContactCard {
		PersonContactCard(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber)
	}
	
	public class func createCompanyContact(
		companyName: String,
		phoneNumber: String
	) -> ContactCard {
		CompanyContactCard(companyName: companyName, phoneNumber: phoneNumber)
	}
}
