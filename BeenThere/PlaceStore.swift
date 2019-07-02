//
//  PlaceStore.swift
//  BeenThere
//
//  Created by mac on 10/06/19.
//  Copyright © 2019 w11wo. All rights reserved.
//

import SwiftUI
import Combine

class PlaceStore : BindableObject {
    var didChange = PassthroughSubject<PlaceStore, Never>()

    var places: [Place] {
        didSet {
            didChange.send(self)
        }
    }

    init(places: [Place] = []) {
        self.places = places
    }

}

