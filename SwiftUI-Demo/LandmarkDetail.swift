//
//  LandmarkDetail.swift
//  SwiftUI-Demo
//
//  Created by ldbmcs on 2020/9/16.
//  Copyright © 2020 ldbmcs. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 300)
            CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                        .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                            .font(.subheadline)
                    Spacer()
                    Text("California")
                            .font(.subheadline)
                }
            }
                    .padding()
            Spacer()
        }
                .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
