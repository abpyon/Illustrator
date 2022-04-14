//
//  ViewController.swift
//  map
//
//  Created by hiroto on 2021/05/03.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = textField.text else { return false }
        textField.resignFirstResponder()
      
        CLGeocoder().geocodeAddressString(text) { place, err in
            if let target = place?.first?.location.coordinate {

              let pin = MKPointAnnotation()
              pin.coordinate = target
              pin.title = text
              
              self.mapView.addAnnotation(pin)
              self.mapView.region = MKCoordinateRegion(center: target,
                                                       latitudinalMeters: 500.0,
                                                       longitudinalMeters: 500.0)
              
              let aloc = CLLocation(latitude: 35.6776117, longitude: 139.7651235)
              let bloc = CLLocation(latitude: target.latitude, longitude: target.longitude)
              let dist = aloc.distance(from: bloc)

              let alert = UIAlertController(title: "", message: "\(text)と東京駅との距離\(dist)m", preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: "OK", style: .default))
              self.present(alert, animated: true)
            }
        }
      return true
   }
}


