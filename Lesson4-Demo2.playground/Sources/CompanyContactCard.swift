import Foundation

public class CompanyContactCard: ContactCard {

  public convenience init(companyName: String, phoneNumber: String) {
    self.init(firstName: companyName, lastName: "", phoneNumber: phoneNumber)
		canAdd = [.company, .person]
		cardType = .company
  }

}

