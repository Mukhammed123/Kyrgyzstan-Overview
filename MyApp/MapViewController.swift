//
//  viewControllerViewController.swift
//  MyApp
//
//  Created by NDHU_CSIE on 2019/12/4.
//  Copyright © 2019 NDHU_CSIE. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var seeMap: MKMapView!
    var centerLocation = CLLocationCoordinate2D(latitude: 42.8746,longitude: 74.5698)
    var zoomSize = 200000.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initMap()
        // Do any additional setup after loading the view.
    }
    
    private func initMap(){
        let region = MKCoordinateRegion(center: centerLocation, latitudinalMeters: zoomSize, longitudinalMeters: zoomSize)
        
        seeMap.setRegion(region, animated: false)
        
        let annotation = MKPointAnnotation()
        annotation.title = "Kyrgyzstan"
        annotation.subtitle = "Bishkek"
        annotation.coordinate = centerLocation
        seeMap.addAnnotation(annotation)
    }
    
        @IBAction func selectType(_ sender: UISegmentedControl) {
            switch sender.selectedSegmentIndex {
            case 0: // Standard
                seeMap.mapType = .standard
            case 1: // Satellite
                seeMap.mapType = .satellite
            case 2: //flyover
                seeMap.mapType = .satelliteFlyover
                let camera = MKMapCamera(lookingAtCenter: centerLocation, fromDistance: 1000.0, pitch: 50.0, heading: 0.0)
                seeMap.setCamera(camera, animated: true)
            default:
                break
            }
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
