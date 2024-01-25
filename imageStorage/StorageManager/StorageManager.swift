//
//  StorageManager.swift
//  imageStorage
//
//  Created by Ислам Батыргереев on 23.01.2024.
//

import Foundation


class StorageManager{
    
    private func fileManagerPatch() -> URL{
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    //save
    
    func saveImage(imageName: String, imageData: Data){
        var path = fileManagerPatch()
        path.append(path: imageName)
        
        do {
            try imageData.write(to: path)
        } catch {
            print(error.localizedDescription)
        }
        
    }

    func loadImage(imageName: String) -> Data{
        var path = fileManagerPatch()
        path.append(path: imageName)
        
        guard let imageData = try? Data(contentsOf: path) else { return Data()}
        
        return imageData
    }
}
