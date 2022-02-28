//
//  DetailViewController.swift
//  ExportAllContacts
//
//  Created by Mac  on 04/04/2019.
//  Copyright © 2019 Sanafreegifts. All rights reserved.
//

import UIKit
import ContactsUI
import Contacts
import MessageUI

class DetailViewController: UIViewController,MFMailComposeViewControllerDelegate
{

    var indexNow:Int = 0
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var dataTextView: UITextView!
    
    @IBAction func YoShareNow(_ sender: Any)
    {

        let firstActivityItem = dataTextView.text
    //        let secondActivityItem : NSURL = NSURL(string: "http//:urlyouwant")!
            let activityViewController : UIActivityViewController = UIActivityViewController(
                activityItems: [firstActivityItem ?? ""], applicationActivities: nil)
            
            // Anything you want to exclude
            activityViewController.excludedActivityTypes = [
                UIActivity.ActivityType.postToWeibo,
                UIActivity.ActivityType.postToTencentWeibo,
                UIActivity.ActivityType.postToVimeo,
                UIActivity.ActivityType.postToFlickr

            ]
            
            self.present(activityViewController, animated: true, completion: nil)
//
//      let alert = UIAlertController(title: "Info", message: "Now you can get Korean Given Name at best of your need.", preferredStyle: UIAlertController.Style.alert)
//
//      alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
//
//      self.present(alert, animated: true, completion: nil)
      
        
    }
    @objc func playTapped()
    {
        // Update the user interface for the detail item.
        
                let alertController = UIAlertController(title: "Do you want to share with", message: "", preferredStyle: .actionSheet)
        
                let action1 = UIAlertAction(title: "Email", style: .default) { (action:UIAlertAction) in
                    print("You've pressed default");
            
                let picker = MFMailComposeViewController()
                picker.mailComposeDelegate = self

                picker.setSubject("")
                picker.setMessageBody(self.dataTextView.text, isHTML: true)
            
                if MFMailComposeViewController.canSendMail()
                {
                    self.present(picker, animated: true, completion: nil)
                }
        }
        //
        //        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
        //            print("You've pressed cancel");
        //        }
        
        let action3 = UIAlertAction(title: "Cancel", style: .destructive) { (action:UIAlertAction) in
            print("You've pressed the destructive");
            
        }
        
        alertController.addAction(action1)
        alertController.addAction(action3)
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }

    
    
    func configureView() {
        // Update the user interface for the detail item.
  
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
     //   let play = UIBarButtonItem(title: "Share", style: .plain, target: self, action: #selector(playTapped))
        self.title = "Pocket Contacts Pro"
        self.navigationController?.isNavigationBarHidden=false
        
//        let add = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(playTapped))
//
//
//        navigationItem.rightBarButtonItems = [add]
        if(indexNow==1)
        {
            AllContactsNow()
        }
        if(indexNow==2)
        {
          AllContactsEmailsNow()
        }
        if(indexNow==3)
        {
            AllContactsPhoneNumbersNow()

        }
        
//        configureView()
    }

//    var detailItem: NSDate? {
//        didSet {
//            // Update the view.
//            configureView()
//        }
//    }

func AllContactsNow()
{
    self.dataTextView.text = ""
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
                    
                    self.dataTextView.text =  self.dataTextView.text + "Given Name = \(contact.givenName) \nFamily name = \(contact.familyName) \nTel:\(localizedLabel) -- \(number.stringValue), \nEmail: "
                    
                    var email11 = "No Email Address Found"
                    if !contact.emailAddresses.isEmpty {
                        let emailString = (((contact.emailAddresses[0] as AnyObject).value(forKey: "labelValuePair")
                            as AnyObject).value(forKey: "value"))
                        email11 = emailString! as! String
                        
                        self.dataTextView.text =  self.dataTextView.text + email11 + "\n"
                    }
                    
                    
                }
                self.dataTextView.text =  self.dataTextView.text + "--------------" + "\n"
            }
        }
        print(contacts)
    } catch
    {
        print("unable to fetch contacts")
    }
    
    }

    
    func AllContactsEmailsNow()
    {
        self.dataTextView.text = ""
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
                        
                   //     self.dataTextView.text =  self.dataTextView.text + "Given Name = \(contact.givenName) \nFamily name = \(contact.familyName) \nTel:\(localizedLabel) -- \(number.stringValue), \nEmail: "
                        
                        var email11 = "No Email Address Found"
                        if !contact.emailAddresses.isEmpty {
                            let emailString = (((contact.emailAddresses[0] as AnyObject).value(forKey: "labelValuePair")
                                as AnyObject).value(forKey: "value"))
                            email11 = emailString! as! String
                            
                            self.dataTextView.text =  self.dataTextView.text + email11 + "\n"
                        }
                        
                        
                    }
                    self.dataTextView.text =  self.dataTextView.text + "\n"
                }
            }
            print(contacts)
        } catch {
            print("unable to fetch contacts")
        }
        
    }
    
    func AllContactsPhoneNumbersNow()
    {
        self.dataTextView.text = ""
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
                        
                        self.dataTextView.text =  self.dataTextView.text + "\(number.stringValue)"
                        
                        var email11 = "No Email Address Found"
                        if !contact.emailAddresses.isEmpty {
                            let emailString = (((contact.emailAddresses[0] as AnyObject).value(forKey: "labelValuePair")
                                as AnyObject).value(forKey: "value"))
                            email11 = emailString! as! String
                            
                       //     self.dataTextView.text =  self.dataTextView.text + email11 + "\n"
                        }
                        
                        
                    }
                    self.dataTextView.text =  self.dataTextView.text + "\n"
                }
            }
            print(contacts)
        } catch {
            print("unable to fetch contacts")
        }
        
    }
    
    func StartHere11()
    {
        
        
        let alert = UIAlertController(title: "Pocket Contacts Pro", message: "Now you will be able to get your all contacts from Phonebook.Now you can save or Share with your friends all at a time.This app will also help you backup your all contacts through email.", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

