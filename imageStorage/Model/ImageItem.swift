//
//  ImageItem.swift
//  imageStorage
//
//  Created by Ислам Батыргереев on 23.01.2024.
//

import Foundation
import RealmSwift


class ImageItem: Object{
    @Persisted(primaryKey: true) var id: String = UUID().uuidString
    @Persisted var imageName: String = ""
    @Persisted var date: Date = Date()
}



