//
//  ContentView.swift
//  MapsPlayGround
//
//  Created by 伊佐治恵介 on 2024/05/29.
//

import SwiftUI
import MapKit

struct MapStyleSample: View {
    let nagoyaToKamejima:[CLLocationCoordinate2D]  = [
        CLLocationCoordinate2D(latitude: 35.171431408654065, longitude: 136.88397079837605),
        CLLocationCoordinate2D(latitude: 35.17208548897156, longitude: 136.88347233316674),
        CLLocationCoordinate2D(latitude: 35.17290040134968, longitude: 136.88302633797946),
        CLLocationCoordinate2D(latitude: 35.1738118068334, longitude: 136.88248852025364),
        CLLocationCoordinate2D(latitude: 35.17475536880521, longitude: 136.8818851150003),
        CLLocationCoordinate2D(latitude: 35.174991257592325, longitude: 136.88168835243468),
        CLLocationCoordinate2D(latitude: 35.17555953230165, longitude: 136.88122923974188),
        CLLocationCoordinate2D(latitude: 35.17622430144848, longitude: 136.88075700954363),
        CLLocationCoordinate2D(latitude: 35.176814011464145, longitude: 136.88016672179577),
        CLLocationCoordinate2D(latitude: 35.17735010776621, longitude: 136.879733844114),
        CLLocationCoordinate2D(latitude: 35.17741443908486, longitude: 136.87944525899286),
        CLLocationCoordinate2D(latitude: 35.17753237970351, longitude: 136.87873691369546),
        CLLocationCoordinate2D(latitude: 35.17706061620219, longitude: 136.87909108634415),
        CLLocationCoordinate2D(latitude: 35.17659957195341, longitude: 136.8793140839378)
    ]

    var body: some View {
        Map {
            MapPolyline(coordinates: nagoyaToKamejima,
                        contourStyle: .straight)
            //            .stroke(.blue, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [0,8]))
            .stroke(.blue, lineWidth: 8)
            Marker(coordinate: CLLocationCoordinate2D(latitude: 35.171431408654065, longitude: 136.88397079837605)) {
                Text("1")
                Image(systemName: "1.circle.fill")
            }
            .tint(.red)
            Marker(coordinate: CLLocationCoordinate2D(latitude: 35.17659957195341, longitude: 136.8793140839378)) {
                Text("2")
            }
            .tint(.blue)
            Marker("", monogram: Text("3"), coordinate: CLLocationCoordinate2D(latitude: 35.17622430144848, longitude: 136.88075700954363))
                .tint(.red)
        }
    }
}


#Preview {
    MapStyleSample()
}
