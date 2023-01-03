//
//  QuestionAndAnsVC.swift
//  SwiftQA
//
//  Created by mac on 28/11/22.
//

import UIKit

class QuestionAndAnsVC: UIViewController {

    @IBOutlet weak var tblQA: UITableView!
    //var arrQuestionAns = [QuestionAnsData]()
    var id = 0
    var subId = 0
    var vcTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tblQA.delegate = self
        tblQA.dataSource = self
        
        tblQA.register(UINib(nibName: QuestionAnsTableViewCell.cell, bundle: nil), forCellReuseIdentifier: QuestionAnsTableViewCell.cell)
        
        self.navigationItem.title = vcTitle
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
     
        
        // Do any additional setup after loading the view.
    }
    


}
extension QuestionAndAnsVC:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData[id].subcatacory[subId].QuestionAns.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tblQA.dequeueReusableCell(withIdentifier: "QuestionAnsTableViewCell") as! QuestionAnsTableViewCell
    
        cell.lblQuestion.text = arrData[id].subcatacory[subId].QuestionAns[indexPath.row].qustion
        
       // cell.lblAns.attributedText = NSAttributedString(string: arrQuestionAns[indexPath.row].ans)
        cell.btnNumber.setTitle("\(indexPath.row + 1)", for: .normal)
        //cell.imgMain.image = UIImage(named: arrImg[indexPath.row])
        
       // let string = "Google"
       // let attributedString = NSMutableAttributedString(string: arrQuestionAns[indexPath.row].ans), attributes:[NSAttributedString.Key.link: URL;(string: arrQuestionAns[indexPath.row].ans)])
        
       // let atributedString = NSAttributedString(string: "Nick", attributes: [NSAttributedString.Key.link: URL(string:  "http://www.google.com")!])

       // cell.lblAns.attributedText = atributedString//
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let url = NSURL(string: arrData[id].subcatacory[subId].QuestionAns[indexPath.row].link)
        if url != nil{
            UIApplication.shared.openURL(url! as URL)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tblQA.estimatedRowHeight
    }
    
}
