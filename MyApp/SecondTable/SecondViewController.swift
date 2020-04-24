//
//  SecondViewController.swift
//  MyApp
//
//  Created by NDHU_CSIE on 2019/12/25.
//  Copyright © 2019 NDHU_CSIE. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var selectedRow: Int!
    @IBOutlet weak var tableView: UITableView!
    
    let data = [
        ["Bishkek","Osh","Talas","Jalal-Abad","Naryn"],
        ["Sary-Chelek", "Jeti-Oguz","Ala-Archa","Alakol","Suusamyr"],
            ["Snow Bars","Mountain Goat", "Wolf","Bear","Eagle"],
            ["Grape","Watermelon","Peach","Apricot","Tomato"],
            ["Shorpo","Besh-barmak","Plov","Chuchuk","Kozu-grill"]
    
    ]
    
    var images = [
        ["region1","region2","region3","region4","region5"],
        ["nature1","nature2","nature3","nature4","nature5"],
        ["animal1","animal2","animal3","animal4","animal5"],
        ["fruit1","fruit2","fruit3","fruit4","fruit5"],
        ["food1","food2","food3","food4","food5"]
    ]
    var dataIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
//        let nib = UINib(nibName: "Datacell2", bundle: nil)
//        tableView.register(nib, forCellReuseIdentifier: "datacell2")

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[selectedRow].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell2"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! Datacell2
        
        // Configure the cell...
        cell.nameLabel?.text = data[selectedRow][indexPath.row]
        cell.thumbnailTableView2?.image = UIImage(named: images[selectedRow][indexPath.row])
        //        cell.heartImageView.isHidden = visited[indexPath.row] ? false : true
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "segue3"{
            let src = segue.destination as! ThirdViewController
            src.firstTableRow = selectedRow
            src.secondTableRow = tableView.indexPathForSelectedRow?.row
        }
    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
