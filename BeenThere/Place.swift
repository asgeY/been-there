//
//  Place.swift
//  BeenThere
//
//  Created by mac on 09/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI

struct Place : Identifiable {
    var id: Int
    var name: String
    var city: String
    var country: String
    var flag: String { getFlag(country: country) }
    var dateOfVisit: String
    var lat: Double
    var long: Double
    var imageName: String { return name }
}

func getFlag(country: String) -> String {
    switch country {
    case "Australia":
        return "\u{1F1E6}\u{1F1FA}"
    case "Japan":
        return "\u{1F1EF}\u{1F1F5}"
    case "Indonesia":
        return "\u{1F1EE}\u{1F1E9}"
    case "Singapore":
        return "\u{1F1F8}\u{1F1EC}"
    default:
        return ""
    }
}

let placedata = [
    Place(id: 0, name: "Harbour Bridge", city: "Sydney", country: "Australia", dateOfVisit: "June 2018", lat: -33.852100, long: 151.210550),
    Place(id: 1, name: "Bondi Beach", city: "Sydney", country: "Australia", dateOfVisit: "June 2018", lat: -33.891476, long: 151.276688),
    Place(id: 2, name: "Opera House", city: "Sydney", country: "Australia", dateOfVisit: "June 2018", lat: -33.856785, long: 150.29),
    Place(id: 3, name: "Fitzroy Falls", city: "Sydney", country: "Australia", dateOfVisit: "June 2018", lat: -34.37, long: 151.215302),
    Place(id: 4, name: "Sensoji Temple", city: "Tokyo", country: "Japan", dateOfVisit: "May 2019", lat: 35.714661, long: 139.796783),
    Place(id: 5, name: "Shibuya", city: "Tokyo", country: "Japan", dateOfVisit: "May 2019", lat: 35.661777, long: 139.704056),
    Place(id: 6, name: "Hachiko Statue", city: "Tokyo", country: "Japan", dateOfVisit: "May 2019", lat: 35.661777, long: 139.704056),
    Place(id: 7, name: "Fushimi Inari Taisha", city: "Kyoto", country: "Japan", dateOfVisit: "May 2019", lat: 35.661777, long: 139.704056),
    Place(id: 8, name: "Dotonbori", city: "Osaka", country: "Japan", dateOfVisit: "May 2019", lat: 34.669029, long: 135.501572),
    Place(id: 9, name: "Osaka Station", city: "Osaka", country: "Japan", dateOfVisit: "May 2019", lat: 34.669029, long: 135.501572),
    Place(id: 10, name: "Jurong East", city: "Singapore", country: "Singapore", dateOfVisit: "January 2019", lat: 1.332857, long: 103.743553),
    Place(id: 11, name: "Jembatan Ampera", city: "Palembang", country: "Indonesia", dateOfVisit: "December 2018", lat: -2.993190, long: 104.764480),
    Place(id: 12, name: "Pelabuhan Sunda Kelapa", city: "Jakarta", country: "Indonesia", dateOfVisit: "April 2019", lat: -6.113894, long: 106.785393),
]
