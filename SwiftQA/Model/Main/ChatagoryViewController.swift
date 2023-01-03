//
//  ChatagoryViewController.swift
//  LearnEnglish
//
//  Created by mac on 16/11/22.
//

import UIKit
import SideMenu


class ChatagoryViewController: UIViewController  {
 

    @IBOutlet var tblMain: UITableView!
    
     //var arrTblList = ["Basic Swift" , "Advance Swift" , "Mostly Asked"]
    var arrImg = ["swiftWhite" , "swiftBlack" , "swiftOrange"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        tblMain.delegate = self
        tblMain.dataSource = self
        
        //self.navigationItem.title = "Your Title"
        
    }
    
    
    @IBAction func btnNotifications(_ sender: UIBarButtonItem) {
        
        //let vc = self.storyboard?.instantiateViewController(withIdentifier: "NotificationsVC") as! NotificationsVC
        
        //self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func btnSideMenu(_ sender: UIBarButtonItem) {
        
       
        
        
    }
    

}

extension ChatagoryViewController:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tblMain.dequeueReusableCell(withIdentifier: "ChatagoryTableViewCell") as! ChatagoryTableViewCell
    
        cell.lblTitle.text = arrData[indexPath.row].catagory
        cell.imgMain.image = UIImage(named: arrImg[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BasicSwiftVC") as! BasicSwiftVC
        vc.id = indexPath.row
        vc.vcTitle = arrData[indexPath.row].catagory
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
    }
    
}

