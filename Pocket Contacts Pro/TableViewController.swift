//
//  TableViewController.swift
//  IOS11IndexedTableViewTutorial
//
//  Created by Arthur Knopper on 11/09/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit
import ContactsUI
import Contacts

class TableViewController: UITableViewController {
    var myArray : NSMutableArray = []

    var carsDictionary = [String: [String]]()
    var carSectionTitles = [String]()
    var cars = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.title="ALL CONTACTS"
     //   cars = ["Audi", "Aston Martin","BMW", "Bugatti", "Bentley","Chevrolet", "Cadillac","Dodge","Ferrari", "Ford","Honda","Jaguar","Lamborghini","Mercedes", "Mazda","Nissan","Porsche","Rolls Royce","Toyota","Volkswagen"]
        
       
        AllContactsNow()
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return carSectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       // /*
        let carKey = carSectionTitles[section]
        if let carValues = carsDictionary[carKey] {
            return carValues.count
        }
        
        return 0
     //   */
        
     //  return self.myArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let carKey = carSectionTitles[indexPath.section]
        if let carValues = carsDictionary[carKey] {
            cell.textLabel?.text = carValues[indexPath.row]
        }
        //cell.textLabel?.text=self.myArray.object(at: indexPath.row) as? String
        return cell
    }
    
   // /*
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return carSectionTitles[section]
    }

    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return carSectionTitles
    }
   // */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func AllContactsNow()
    {
    //    self.dataTextView.text = ""
        // Do any additional setup after loading the view, typically from a nib.
        let contactStore = CNContactStore()
        var contacts = [CNContact]()
        let keys = [
            CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
            CNContactPhoneNumbersKey,
            CNContactEmailAddressesKey
            ] as [Any]
        let request = CNContactFetchRequest(keysToFetch: keys as! [CNKeyDescriptor])
        do {
            try contactStore.enumerateContacts(with: request){
                (contact, stop) in
                // Array containing all unified contacts from everywhere
                contacts.append(contact)
                for phoneNumber in contact.phoneNumbers {
                    if let number = phoneNumber.value as? CNPhoneNumber, let label = phoneNumber.label {
                        let localizedLabel = CNLabeledValue<CNPhoneNumber>.localizedString(forLabel: label)
                        print("Given Name = \(contact.givenName) \n Family name = \(contact.familyName) \n tel:\(localizedLabel) -- \(number.stringValue), \n email: \(contact.emailAddresses)")
                        self.myArray.add(contact.givenName)
                        
                   //     self.dataTextView.text =  self.dataTextView.text + "Given Name = \(contact.givenName) \nFamily name = \(contact.familyName) \nTel:\(localizedLabel) -- \(number.stringValue), \nEmail: "
                        
                        var email11 = "No Email Address Found"
                        if !contact.emailAddresses.isEmpty {
                            let emailString = (((contact.emailAddresses[0] as AnyObject).value(forKey: "labelValuePair")
                                as AnyObject).value(forKey: "value"))
                            email11 = emailString! as! String
                            
                        //    self.dataTextView.text =  self.dataTextView.text + email11 + "\n"
                        }
                        
                        
                    }
               //     self.dataTextView.text =  self.dataTextView.text + "--------------" + "\n"
                }
            }
            print(contacts)
        } catch
        {
            print("unable to fetch contacts")
        }
        
      //  var car:String
        
        
      //  var Yoo = self.myArray.getStrings() as NSMutableArray as [String]
        

       // var objCMutableArray = NSMutableArray(array: ["a", "b", "c"])
        let swiftArray = self.myArray as NSArray as! [String]
        
        
        for car in swiftArray {
         //   car=car as String!
            let carKey = String(car.prefix(1))
            if var carValues = carsDictionary[carKey] {
                carValues.append(car)
                carsDictionary[carKey] = carValues
            } else {
                carsDictionary[carKey] = [car]
            }
        }
        
        carSectionTitles = [String](carsDictionary.keys)
        carSectionTitles = carSectionTitles.sorted(by: { $0 < $1 })
        
        
        let alertController = UIAlertController(title: "You have \(self.myArray.count) contacts ", message: "Now you are ready to set backup and save your data", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
            print("You've pressed default");
            
        }
        
        alertController.addAction(action1)
        self.present(alertController, animated: true, completion: nil)
        
        
        self.tableView.reloadData()
    }
    
}
    

