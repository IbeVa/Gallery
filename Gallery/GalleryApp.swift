//
//  GalleryApp.swift
//  Gallery
//
//  Created by Ibe Vangheluwe on 04/12/2025.
//

import SwiftUI

@main
struct GalleryApp: App {
    @State var galleryStore = GalleryStore()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(galleryStore).environment(pathStore)
        }
    }
}
