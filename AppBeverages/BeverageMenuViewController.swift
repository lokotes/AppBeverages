//
//  ViewController.swift
//  AppBeverages
//
//  Created by MacAMP on 7/05/18.
//  Copyright © 2018 MacAMP. All rights reserved.
//

import UIKit
import SVProgressHUD

struct Beverage {
    let name : String
    let image : UIImage
}

class BeverageMenuViewController: UIViewController, UITableViewDataSource {
    
    lazy var beverages : [Beverage] = {
        //2.
        let bundle = Bundle(for: type(of: self))
        //3.
        let lemonade = Beverage(name: "cocacola", image: UIImage(named: "cocacola.jpg", in: bundle, compatibleWith: nil)!)
        let strawBerryLemonade = Beverage(name: "pepsi", image: UIImage(named: "pepsi.jpeg", in: bundle, compatibleWith: nil)!)
        let pina = Beverage(name: "jumex", image: UIImage(named: "jumex.jpeg", in: bundle, compatibleWith: nil)!)
        let margarita = Beverage(name: "tequila", image: UIImage(named: "tequila.jpeg", in: bundle, compatibleWith: nil)!)
        return [lemonade,strawBerryLemonade,pina,margarita]
    }()
    
    
    @IBOutlet weak var tableViewPod: UITableView!{
        didSet {
            tableViewPod.dataSource = self
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return beverages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageCell", for: indexPath) as! BeverageCell
        let beverage = beverages[indexPath.row]
        cell.lblCell.text = beverage.name
        cell.imgCell.image = beverage.image
        return cell
    }


}

