//
//  CategoryRow.swift
//  BeenThere
//
//  Created by mac on 10/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI

struct CategoryRow : View {
    let places: [Place] = PlaceStore(places: placedata).places
    var label: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.title)
                .bold()
                .padding(0)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(categorizeCountry()) { place in
                        NavigationButton(destination: PlaceDetail(place: place)) {
                            Image(place.imageName)
                                .renderingMode(.original)
                                .resizable()
                                .clipShape(Rectangle())
                                .frame(width: 225, height: 150)
                                .cornerRadius(8)
                                .padding(.leading, 2)
                                .padding(.trailing, 2)
                        }
                    }
                }
            }
                .frame(height: 155)
        }
            .padding(.bottom, 5)
    }
    
    func categorizeCountry() -> [Place] {
        var categorizedPlaces: [Place] = []
        
        for place in places {
            if place.country == label {
                categorizedPlaces.append(place)
            }
        }
        
        return categorizedPlaces
    }
}




#if DEBUG
struct CategoryRow_Previews : PreviewProvider {
    static var previews: some View {
        CategoryRow(label: "Australia")
    }
}
#endif
