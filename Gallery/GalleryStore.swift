//
//  GalleryStore.swift
//  Gallery
//
//  Created by Ibe Vangheluwe on 04/12/2025.
//

import Foundation

@Observable
class GalleryStore{
    private var galleries = Galleries()
    
    
    func getGallery() -> [Gallery] {
        return galleries.galleries
    }
    
    
    
    func loadData() async {
        //simulate async call
        do {
            print("⏳ Simulating 2-second load delay...")
            try await Task.sleep(for: .seconds(2)) // Simulate long load
            let data : Galleries = load("galleries.json")
            galleries.galleries = data.galleries
            print("✅ Data loaded successfully.")
            
        } catch {
            print("❌ Failed to load uurrooster:", error)
            //movies is lege array
        }
    }
}
