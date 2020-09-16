//
//  ViewController.swift
//  Itsudaregamelfors
//
//  Created by 森田貴帆 on 2020/09/16.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsu:UILabel!
    @IBOutlet var doko:UILabel!
    @IBOutlet var dare:UILabel!
    @IBOutlet var dousita:UILabel!

    let itsuArray:[String] = ["昨日","一年前","3歳の時","宿題が終わらないとき"]
    let dokoArray:[String] = ["家で","芝生広場で","電車で","テラスで"]
    let dareArray:[String] = ["私が","講師が","ペットの亀が","ウッディーが"]
    let dousitaArray:[String] = ["叫んだ","写真を撮った","味見した","電気を消した"]
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change(){
        itsu.text = itsuArray[index]
        doko.text = dokoArray[index]
        dare.text = dareArray[index]
        dousita.text = dousitaArray[index]
        index = index + 1
        
        if index > 3{
            index = 0
        }
    }
    @IBAction func reset(){
           itsu.text = "---"
           doko.text = "---"
           dare.text = "---"
           dousita.text = "---"
           index = 0
    }
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let dareIndex = Int.random(in: 0...3)
        let dousitaIndex = Int.random(in: 0...3)
        
        print("いつ:\(itsuIndex)")
        print("どこ:\(dokoIndex)")
         print("誰:\(dareIndex)")
         print("どう:\(dousitaIndex)")
        
        itsu.text = itsuArray[itsuIndex]
        doko.text = dokoArray[dokoIndex]
        dare.text = dareArray[dareIndex]
        dousita.text = dousitaArray[dousitaIndex]
        
    }
}

