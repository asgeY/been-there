//
//  MapView.swift
//  BeenThere
//
//  Created by mac on 09/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let place: Place
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: place.lat, longitude: place.long)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView(place: placedata[0])
    }
}
#endif
