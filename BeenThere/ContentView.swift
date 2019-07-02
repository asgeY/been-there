//
//  ContentView.swift
//  BeenThere
//
//  Created by mac on 09/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var sortMode = "default"
    @ObjectBinding var store = PlaceStore(places: placedata)
    
    var body: some View {
        NavigationView {
                List {
                    FeaturedCard(places: fiveRandomPlaces)
                    CategoryRow(label: "Australia")
                    CategoryRow(label: "Japan")
                    CategoryRow(label: "Singapore")
                    CategoryRow(label: "Indonesia")
                    Button(action: sortPlaces) {
                        Text("Sort")
                    }
                    ForEach(store.places) { place in
                        PlaceCell(place: place)
                    }
                }
            .listStyle(.grouped)
            .navigationBarTitle(Text("Been There."))
        }
    }

    func sortPlaces() {
        switch sortMode {
        case "default":
            store.places.sort { $0.name < $1.name }
            sortMode = "name"
        case "name":
            store.places.sort { $0.city < $1.city }
            sortMode = "city"
        case "city":
            store.places.sort { $0.country < $1.country }
            sortMode = "country"
        case "country":
            store.places.sort { $0.id < $1.id }
            sortMode = "default"
        default:
            store.places.sort { $0.id < $1.id }
            sortMode = "default"
        }
    }
}

var fiveRandomPlaces = getFiveRandomPlaces(places: PlaceStore(places: placedata).places)

func getFiveRandomPlaces(places: [Place]) -> [Place] {
    var places = places
    var fiveRandomPlaces: [Place] = []
    for _ in 0 ..< 5 {
        let i = Int.random(in: 0 ..< places.count)
        fiveRandomPlaces.append(places[i])
        places.remove(at: i)
    }
    return fiveRandomPlaces
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(store: PlaceStore(places: placedata))
    }
}
#endif
