//
//  ContentView.swift
//  Gallery
//
//  Created by Ibe Vangheluwe on 04/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State var loading = true
    @Environment(GalleryStore.self) var galleryStore
    @State var selectedGallery : Gallery?
    var body: some View {
        VStack{
            if loading {
                ProgressView("Loading...")
            }else{
                TabView{
                    Tab {
                        List(galleryStore.getGallery(), id:\.self  , selection: $selectedGallery) { gallery in
                            VStack(alignment: .center){
                                Text(gallery.name).foregroundStyle(Color.brown).font(Font.largeTitle).bold(true)
                                Text(gallery.location).bold(true)
                                Text(gallery.description).foregroundStyle(Color.gray)
                            }
                        }
                    } label: {
                        Text("Galleries").foregroundStyle(.black)
                    }
                    
                    Tab {
                        GalleryView(selectedGallery: selectedGallery)
                    } label: {
                        if let selectedGallery = selectedGallery{
                            Text("\(selectedGallery.name)")
                        }else{
                            Text("No Gallery")
                        }
                    }
                }
            }
        }.task {
            await galleryStore.loadData()
            loading = false
        }
    }
}
