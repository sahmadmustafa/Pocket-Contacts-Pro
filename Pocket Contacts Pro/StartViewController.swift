//
//  DetailViewController.swift
//  ExportAllContacts
//
//  Created by Mac  on 04/04/2019.
//  Copyright © 2019 Sanafreegifts. All rights reserved.
//


import Foundation
import UIKit
import ContactsUI
import Contacts



class StartViewController: UIViewController
{
    
    var myArray : NSMutableArray = []
    
    var carsDictionary = [String: [String]]()
    var carSectionTitles = [String]()
    var cars = [String]()

    @IBOutlet weak var but1: UIButton!

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    
    
//    @IBOutlet weak var dataTextView: UITextView!
    
    
    
    @IBAction func NextButton(_ sender: Any)
    {

        self.AllContactsbackUp()
        
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "OptionsViewController") as? OptionsViewController
//
//        if let controlVC = controlVC {
//            navigationController?.pushViewController(controlVC, animated: true)
//        }
    
//        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
//
//        if let controlVC = controlVC {
//            navigationController?.pushViewController(controlVC, animated: true)
//        }
        
        
        //self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func NextButtonMultiSelect(_ sender: Any)
    {
        
        /*
         
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        
        if let controlVC = controlVC {
            navigationController?.pushViewController(controlVC, animated: true)
        }
        */
        
        //self.navigationController?.popViewController(animated: true)
    }
  
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool)
    {

        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden=false

        but1.layer.cornerRadius=but1.frame.size.height/2.0

//        but1.layer.cornerRadius=but1.frame.size.height
//        but2.layer.cornerRadius=but2.frame.size.height
//        but3.layer.cornerRadius=but3.frame.size.height

    }
    @objc func playTapped()
    {
        // Update the user interface for the detail item.
        
//        let alertController = UIAlertController(title: "Do you want to share with", message: "", preferredStyle: .actionSheet)
//        
//        let action1 = UIAlertAction(title: "Raw Simulation Of Phone Book", style: .default) { (action:UIAlertAction) in
//            print("You've pressed default");
//            
//                    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            
//                    let controlVC = mainStoryboard.instantiateViewController(withIdentifier: "OptionsViewController") as? OptionsViewController
//            
//                    if let controlVC = controlVC {
//                        self.navigationController?.pushViewController(controlVC, animated: true)
//                    }
//            
//         
//        }
//     
//        let action3 = UIAlertAction(title: "Cancel", style: .destructive) { (action:UIAlertAction) in
//            print("You've pressed the destructive");
//            
//        }
//        
//        alertController.addAction(action1)
//        alertController.addAction(action3)
//        self.present(alertController, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let add = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(playTapped))
        
        
        navigationItem.rightBarButtonItems = [add]
        
       self.title = "Back Up Contacts"
        self.navigationController?.isNavigationBarHidden=true

        
        self.AllContactsNow()
        
   //     self.dataTextView.text = ""
        
    //    let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
      
        
        
        // Do any additional setup after loading the view, typically from a nib.
      
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
        
        var csvText:String = "Given Name,Family Name,Phone Number,Email\n"

        
        do {
            try contactStore.enumerateContacts(with: request){
                (contact, stop) in
                // Array containing all unified contacts from everywhere
                contacts.append(contact)
                
                
                
                for phoneNumber in contact.phoneNumbers {
                    if let number = phoneNumber.value as? CNPhoneNumber, let label = phoneNumber.label {
                        let localizedLabel = CNLabeledValue<CNPhoneNumber>.localizedString(forLabel: label)
                        print("Given Name = \(contact.givenName) \n Family name = \(contact.familyName) \n tel:\(localizedLabel) -- \(number.stringValue), \n email: \(contact.emailAddresses)")
                        
                          let newLine = "\(contact.givenName),\(contact.familyName),\(number.stringValue)"
                        csvText=csvText + newLine

                        self.myArray.add(contact.givenName)
                        
                        //     self.dataTextView.text =  self.dataTextView.text + "Given Name = \(contact.givenName) \nFamily name = \(contact.familyName) \nTel:\(localizedLabel) -- \(number.stringValue), \nEmail: "
                        
                        var email11 = "No Email Address Found"
                        if !contact.emailAddresses.isEmpty {
                            let emailString = (((contact.emailAddresses[0] as AnyObject).value(forKey: "labelValuePair")
                                as AnyObject).value(forKey: "value"))
                            email11 = emailString! as! String
                            
                            //    self.dataTextView.text =  self.dataTextView.text + email11 + "\n"
                            csvText=csvText + email11 + "\n"

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
        
        let alertController = UIAlertController(title: "You have \(self.myArray.count) contacts ", message: "Now you are ready to set backup and save your data", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
            print("You've pressed default");
            
        }
        
        alertController.addAction(action1)
        self.present(alertController, animated: true, completion: nil)
        
        
    
        
        
    }
    
    func AllContactsbackUp()
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
        
        var csvText:String = "Given Name,Family Name,Phone Number,Email\n"
        
        
        do {
            try contactStore.enumerateContacts(with: request){
                (contact, stop) in
                // Array containing all unified contacts from everywhere
                contacts.append(contact)
                
                
                
                for phoneNumber in contact.phoneNumbers {
                    if let number = phoneNumber.value as? CNPhoneNumber, let label = phoneNumber.label {
                        let localizedLabel = CNLabeledValue<CNPhoneNumber>.localizedString(forLabel: label)
                        print("Given Name = \(contact.givenName) \n Family name = \(contact.familyName) \n tel:\(localizedLabel) -- \(number.stringValue), \n email: \(contact.emailAddresses)")
                        
                        let newLine = "\(contact.givenName),\(contact.familyName),\(number.stringValue)"
                        csvText=csvText + newLine
                        
                        self.myArray.add(contact.givenName)
                        
                        //     self.dataTextView.text =  self.dataTextView.text + "Given Name = \(contact.givenName) \nFamily name = \(contact.familyName) \nTel:\(localizedLabel) -- \(number.stringValue), \nEmail: "
                        
                        var email11 = "No Email Address Found"
                        if !contact.emailAddresses.isEmpty {
                            let emailString = (((contact.emailAddresses[0] as AnyObject).value(forKey: "labelValuePair")
                                as AnyObject).value(forKey: "value"))
                            email11 = emailString! as! String
                            
                            //    self.dataTextView.text =  self.dataTextView.text + email11 + "\n"
                            csvText=csvText + email11 + "\n"
                            
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
        
        /*
         let alertController = UIAlertController(title: "You have \(self.myArray.count) contacts ", message: "Now you are ready to set backup and save your data", preferredStyle: .alert)
         
         let action1 = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
         print("You've pressed default");
         
         }
         
         alertController.addAction(action1)
         self.present(alertController, animated: true, completion: nil)
         */
        
        
        let fileName = "Backup.csv"
        let path = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
        
        
        
        
        do {
            //     let file2url = NSURL(string: "")
            
            try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
            
            let vc = UIActivityViewController(activityItems: [path], applicationActivities: [])
            vc.excludedActivityTypes = [
                UIActivity.ActivityType.assignToContact,
                UIActivity.ActivityType.saveToCameraRoll,
                UIActivity.ActivityType.postToFlickr,
                UIActivity.ActivityType.postToVimeo,
                UIActivity.ActivityType.postToTencentWeibo,
                UIActivity.ActivityType.postToTwitter,
                UIActivity.ActivityType.postToFacebook,
                UIActivity.ActivityType.openInIBooks,
                UIActivity.ActivityType.message,
                UIActivity.ActivityType.mail,
                UIActivity.ActivityType.print
            ]
            present(vc, animated: true, completion: nil)
            
        } catch {
            
            print("Failed to create file")
            print("\(error)")
        }
        
        
        
        
    }
    
    
    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    
    
    
    /*
    @IBAction func export(sender: AnyObject) {
        
        let fileName = "Backup.csv"
        let path = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
        
        var csvText = "Date,Mileage,Gallons,Price,Price per gallon,Miles between fillups,MPG\n"
        
//        currentCar.fillups.sortInPlace({ $0.date.compare($1.date) == .OrderedDescending })
        
        let count = myArray.count
        
        if count > 0 {
            
            for fillup in currentCar.fillups {
                
                let dateFormatter = NSDateFormatter()
                dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
                let convertedDate = dateFormatter.stringFromDate(fillup.date)
                
                let newLine = "\(convertedDate),\(fillup.mileage),\(fillup.gallons),\(fillup.priceTotal),\(fillup.priceGallon),\(fillup.mileDelta),\(fillup.MPG)\n"
                
                csvText.appendContentsOf(newLine)
            }
            
            do {
                try csvText.write(to: path ?? <#default value#>, atomically: true, encoding: String.Encoding.utf8)
                
                let vc = UIActivityViewController(activityItems: [path], applicationActivities: [])
                vc.excludedActivityTypes = [
                    UIActivity.ActivityType.assignToContact,
                    UIActivity.ActivityType.saveToCameraRoll,
                    UIActivity.ActivityType.postToFlickr,
                    UIActivity.ActivityType.postToVimeo,
                    UIActivity.ActivityType.postToTencentWeibo,
                    UIActivity.ActivityType.postToTwitter,
                    UIActivity.ActivityType.postToFacebook,
                    UIActivity.ActivityType.openInIBooks
                ]
                present(vc, animated: true, completion: nil)
                
            } catch {
                
                print("Failed to create file")
                print("\(error)")
            }
            
        } else {
      //      showErrorAlert("Error", msg: "There is no data to export")
        }
    }
    
  */
    
}


