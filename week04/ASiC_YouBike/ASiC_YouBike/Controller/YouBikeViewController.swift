//
//  YouBikeViewController.swift
//  ASiC_YouBike
//
//  Created by WU CHIH WEI on 2018/2/25.
//  Copyright © 2018年 WU CHIH WEI. All rights reserved.
//

import UIKit
import MapKit

protocol StationInfo {
    
    var name: String { get }
    
    var position: String { get }
    
    var remainBikes: String { get }
}



class YouBikeViewController: UIViewController,DelegateClientProtocol {
    
    func didGetDataFromFile(stationInfo: StationInfo) {
        Station_name.text = stationInfo.name
        Station_position.text =  stationInfo.position
        Station_remainBike.text = "剩" + stationInfo.remainBikes
      
    }
    
    
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var Station_name: UILabel!
    
    @IBOutlet weak var Station_position: UILabel!
    
    @IBOutlet weak var Station_remainBike: UILabel!
    let closureClient = ClosureClient()
    
    var delegateClient = DelegateClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            delegateClient.delegate = self
            delegateClient.loadData()
        
            closureClient.getDataFromFile { (annotation) in
           
            mapView.addAnnotation(annotation)
          let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 2000, 2000)
            mapView.setRegion(region, animated: true)
           // mapView.addAnnotation(annotation as! MKAnnotation)
        }
        
        
    
    }
}
