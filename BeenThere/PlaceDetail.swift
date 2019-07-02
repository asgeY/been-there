//
//  PlaceDetail.swift
//  BeenThere
//
//  Created by mac on 09/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI
import Combine

struct PlaceDetail : View {
    let place: Place
    
    var body: some View {
        VStack {
            MapView(place: place)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            VStack(alignment: .leading) {
                ImageRect(place: place)
                
                VStack(alignment: .leading) {
                    Text(place.name)
                        .font(.title)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text("\(place.city), \(place.country) \(place.flag)")
                            .font(.subheadline)
                    }
                    
                    HStack {
                        Image(systemName: "calendar")
                        Text(place.dateOfVisit)
                            .font(.subheadline)
                    }
                    
                }
            }
                .offset(y: -180)
                .padding()
        }
    }
}

struct ImageRect : View {
    let place: Place
    
    var body: some View {
        Image(place.imageName)
            .resizable()
            .cornerRadius(8)
            .border(Color.white, width: 4, cornerRadius: 8)
            .shadow(radius: 10)
            .aspectRatio(3/2, contentMode: .fit)
            .navigationBarTitle(Text(place.name), displayMode: .inline)
    }
}

#if DEBUG
struct PlaceDetail_Previews : PreviewProvider {
    static var previews: some View {
        PlaceDetail(place: placedata[0])
    }
}
#endif
