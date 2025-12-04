//
//  GalleryView.swift
//  Gallery
//
//  Created by Ibe Vangheluwe on 04/12/2025.
//

import SwiftUI

struct GalleryView: View {
    @State var selectedGallery: Gallery?
    var body: some View {
        if let selectedGallery = selectedGallery{
            VStack(alignment: .center){
                Text(selectedGallery.name).foregroundStyle(.brown).bold(true).font(Font.largeTitle)
            }
            Divider().foregroundStyle(Color.brown)
            VStack(alignment: .center){
                Text(selectedGallery.location)
                Text(selectedGallery.description)
            }
            Divider().foregroundStyle(Color.brown)
            VStack(alignment: .center) {
                Text("List of artists").foregroundStyle(Color.brown)
                
            }
        }else{
            Text("No gallery selected")
        }
    }
}

