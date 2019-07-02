//
//  PlaceCell.swift
//  BeenThere
//
//  Created by mac on 10/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI

struct PlaceCell : View {
    let place: Place
    
    var body: some View {
        NavigationButton(destination: PlaceDetail(place: place)) {
            Image(place.imageName)
                .resizable()
                .clipShape(Rectangle())
                .frame(width: 50.0, height: 50.0)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(place.name)
                Text("\(place.city), \(place.country)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#if DEBUG
struct PlaceCell_Previews : PreviewProvider {
    static var previews: some View {
        PlaceCell(place: placedata[0])
    }
}
#endif
