//
//  RealmManager.swift
//  imageStorage
//
//  Created by Ислам Батыргереев on 23.01.2024.
//

import Foundation
import RealmSwift

class RealmManager{
    
    let realm = try! Realm()
    var images: [ImageItem] = []
    
    init(){
        fetchResults()
    }
    
    
    //Create
    func writeToRealm(photoName: String) {
        let imageItem = ImageItem()
        imageItem.imageName = photoName
    
        do {
            try realm.write({
                realm.add(imageItem)
            })
        } catch {
            print(error.localizedDescription)
        }
        
        fetchResults()
    }
    
    func fetchResults(){
        let items = realm.objects(ImageItem.self)
        self.images = Array(items)
    }
    
    
}

// Table - ImageItem
// 1 | imageName
// 2 | img1.jpg
// 3 | img2.jpg
// 4 | img3.jpg
