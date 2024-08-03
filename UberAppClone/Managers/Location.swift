//
//  Location.swift
//  UberAppClone
//
//  Created by Evelyn Morado on 12/21/23.
//

import CoreLocation

class Location: NSObject, ObservableObject {
    private let location = CLLocationManager()
    override init() {
        super.init()
        location.delegate = self
        location.desiredAccuracy = kCLLocationAccuracyBest
        location.requestWhenInUseAuthorization()
        location.startUpdatingLocation()
    }
}
extension Location: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        location.stopUpdatingLocation()
    }
}
