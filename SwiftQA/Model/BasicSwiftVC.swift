//
//  BasicSwiftVC.swift
//  SwiftQA
//
//  Created by mac on 27/11/22.
//

import UIKit

class BasicSwiftVC: UIViewController {

    @IBOutlet weak var tblBasicSwift: UITableView!
    
    var id = 0
   // var arrBasicList = [MainModel]()
    var vcTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tblBasicSwift.delegate  = self
        tblBasicSwift.dataSource = self
        
        tblBasicSwift.register(UINib(nibName: BasicSwiftTableViewCell.cell, bundle: nil), forCellReuseIdentifier: BasicSwiftTableViewCell.cell)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        self.navigationItem.title = vcTitle
        
   
       
    }
    

    

}

extension BasicSwiftVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData[id].subcatacory.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tblBasicSwift.dequeueReusableCell(withIdentifier: "BasicSwiftTableViewCell") as! BasicSwiftTableViewCell
    
        cell.lblTitle.text = arrData[id].subcatacory[indexPath.row].title
        cell.btnNumber.setTitle("\(indexPath.row + 1)", for: .normal)
        //cell.imgMain.image = UIImage(named: arrImg[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuestionAndAnsVC") as! QuestionAndAnsVC
        vc.id = id
        vc.subId = indexPath.row
        
        vc.vcTitle = arrData[id].subcatacory[indexPath.row].title
        

        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }
    
}
