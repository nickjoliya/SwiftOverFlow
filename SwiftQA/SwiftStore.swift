//
//  SwiftStore.swift
//  SwiftQA
//
//  Created by mac on 27/11/22.
//

import Foundation

struct MainModel{
    
    let catagory:String
    let subcatacory:[SubModel]
}
struct SubModel{
    
    let title:String
    let QuestionAns:[QuestionAnsModel]
}

struct QuestionAnsModel{
    let qustion:String
    let link:String
}

let arrData = [
    MainModel(catagory: "Basic Swift", subcatacory: [
        SubModel(title: "Lable", QuestionAns: [
            QuestionAnsModel(qustion: "How to Apply Border color to Lable", link: "https://stackoverflow.com/questions/2311591/how-to-draw-border-around-a-uilabel"),
            QuestionAnsModel(qustion: "How to Apply Border color to Lable", link: "https://stackoverflow.com/questions/2311591/how-to-draw-border-around-a-uilabel")
        ]),
        SubModel(title: "Button", QuestionAns: [
            QuestionAnsModel(qustion: "How to Change Background colour of Button", link: "https://stackoverflow.com/questions/24427284/change-button-background-color-using-swift-language"),
            QuestionAnsModel(qustion: "How to apply corner radius to Button", link: "https://stackoverflow.com/questions/26961274/how-can-i-make-a-button-have-a-rounded-border-in-swift")
        ]),
        SubModel(title: "TestField", QuestionAns: [
            QuestionAnsModel(qustion: "How to Change  Placeholder Text Color of TestField with Swift", link: "https://stackoverflow.com/questions/26076054/changing-placeholder-text-color-with-swift"),
            QuestionAnsModel(qustion: "How to set swift  UITextField border color?", link: "https://stackoverflow.com/questions/38460327/how-set-swift-3-uitextfield-border-color")
            
        ])
        
    ]),
    
    
    
    MainModel(catagory: "Advance Swift", subcatacory: [
        SubModel(title: "TableView", QuestionAns: [
            QuestionAnsModel(qustion: "How to redirect to another view controller when click on TableViewCell?", link: "https://stackoverflow.com/questions/48459517/how-to-redirect-to-another-view-controller-when-click-on-tableviewcell"),
            QuestionAnsModel(qustion: "Dynamically adjust the height of the tableview cell based on content - iOS Swift", link: "https://stackoverflow.com/questions/42453459/dynamically-adjust-the-height-of-the-tableview-cell-based-on-content-ios-swift")
        ]),
        SubModel(title: "CollectionView", QuestionAns: [
            QuestionAnsModel(qustion: "How to set UICollectionViewCell Width and Height programmatically", link: "https://stackoverflow.com/questions/38028013/how-to-set-uicollectionviewcell-width-and-height-programmatically"),
            QuestionAnsModel(qustion: "How to Change Background colour of Button", link: "https://stackoverflow.com/questions/24427284/change-button-background-color-using-swift-language")
        ]),
        SubModel(title: "ScrollView", QuestionAns: [
            QuestionAnsModel(qustion: "How to Change Background colour of Button", link: "https://stackoverflow.com/questions/24427284/change-button-background-color-using-swift-language")])
        
    ]),
    
    
    
    MainModel(catagory: "Mostly Asked", subcatacory: [
        SubModel(title: "Lable", QuestionAns: [
            QuestionAnsModel(qustion: "How to Apply Border color to Lable", link: "https://stackoverflow.com/questions/2311591/how-to-draw-border-around-a-uilabel"),
            QuestionAnsModel(qustion: "How to Apply Border color to Lable", link: "https://stackoverflow.com/questions/2311591/how-to-draw-border-around-a-uilabel")
        ]),
        SubModel(title: "Button", QuestionAns: [
            QuestionAnsModel(qustion: "How to Change Background colour of Button", link: "https://stackoverflow.com/questions/24427284/change-button-background-color-using-swift-language"),
            QuestionAnsModel(qustion: "How to Change Background colour of Button", link: "https://stackoverflow.com/questions/24427284/change-button-background-color-using-swift-language")
        ]),
        SubModel(title: "TestView", QuestionAns: [
            QuestionAnsModel(qustion: "How to Change Background colour of Button", link: "https://stackoverflow.com/questions/24427284/change-button-background-color-using-swift-language")])
        
    ])
   
]
