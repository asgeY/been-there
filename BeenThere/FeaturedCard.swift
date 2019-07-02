//
//  FeaturedCard.swift
//  BeenThere
//
//  Created by mac on 10/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI

struct FeaturedCard : View {
    let places: [Place]
    @State var index = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured")
                .font(.title)
                .bold()
                .padding(0)
            
            ZStack(alignment: .bottomTrailing) {
                Image(places[index].imageName)
                    .resizable()
                    .cornerRadius(8)
                    .aspectRatio(3/2, contentMode: .fit)
                
                Text(places[index].name)
                    .font(.title)
                    .bold()
                    .color(.white)
                    .padding()
                }
                .tapAction {
                    if self.index == 4 {
                        self.index = 0
                    } else {
                        self.index += 1
                    }
                }
        }
            .padding(.bottom, 10)
    }
}

#if DEBUG
struct FeaturedCard_Previews : PreviewProvider {
    static var previews: some View {
        FeaturedCard(places: placedata)
    }
}
#endif
