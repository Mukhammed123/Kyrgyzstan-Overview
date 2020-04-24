//
//  ViewController.swift
//  MyApp
//
//  Created by NDHU_CSIE on 2019/12/4.
//  Copyright © 2019 NDHU_CSIE. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var attributes = ["Regions", "Nature","Animals&Birds","Fruits&Vegetables","Food"]
    var desc = ["Over 32 cities in 7 regions","94% covered by mountains","43 mammal species, 4 endangered, 5 vulnarable...","Origin for many global fruits","nomadic mixed with many cultures"]
    var visited = [false,false,false,false,false,false]
    var images = ["1","2","3","4","5","6"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attributes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! Table1TableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = attributes[indexPath.row]
        cell.thumbnailTableView.image = UIImage(named: images[indexPath.row])
        cell.descLabel.text = desc[indexPath.row]
//        cell.heartImageView.isHidden = visited[indexPath.row] ? false : true
        
        return cell
    }
    
    var selectedRow1: Int = 0
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow1 = indexPath.row
        print(selectedRow1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "segue2"{
            let src = segue.destination as! SecondViewController
            src.selectedRow = tableView.indexPathForSelectedRow?.row
        }
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet var mapView: MKMapView!
    var centerLocation = CLLocationCoordinate2D(latitude: 42.8746,longitude: 74.5698)
    var zoomSize = 200000.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initMap()
    }
    
    private func initMap(){
        let region = MKCoordinateRegion(center: centerLocation, latitudinalMeters: zoomSize, longitudinalMeters: zoomSize)
        
        mapView.setRegion(region, animated: false)
        
        let annotation = MKPointAnnotation()
        annotation.title = "Kyrgyzstan"
        annotation.subtitle = "Bishkek"
        annotation.coordinate = centerLocation
        mapView.addAnnotation(annotation)
    }
    
    


}

