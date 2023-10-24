//
//  LocalFileManager.swift
//  SwiftfulCrypto
//
//  Created by Jason on 2023/10/24.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    private init() {}
    
    
    /// Description
    /// 保存图片
    /// - Parameters:
    ///   - image: 图片
    ///   - imageName: 图片名
    ///   - folderName: 文件夹名
    func saveImage(image: UIImage, imageName: String, folderName: String){
        
        // create folder
        createFolderIfNeeded(folderName: folderName)
        
        // get path for image
        guard
            let data = image.pngData(),
            let url = getURLForImage(imageName: imageName, folderName: folderName)
        else {return}

        // save image to path
        do {
            print("ready to write: \(url)")
            try data.write(to: url)
        } catch let error {
            print("Error saving image. ImageName: \(imageName). \(error)")
        }
    }
    
    
    /// Description
    /// 获取图片
    /// - Parameters:
    ///   - imageName: 图片名
    ///   - folderName: 文件夹名
    func getImage(imageName: String, folderName: String) -> UIImage? {
        guard
            let url = getURLForImage(imageName: imageName, folderName: folderName),
            FileManager.default.fileExists(atPath: url.path) else {
            return nil
        }
        return UIImage(contentsOfFile: url.path)
    }
    
    
    /// Description
    /// 创建文件夹
    /// - Parameter folderName: 文件夹名
    private func createFolderIfNeeded(folderName: String){
        guard let url = getURLForFolder(folderName: folderName) else {return}
        
        if !FileManager.default.fileExists(atPath: url.path) {
            do {
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
            } catch let error {
                print("Error creating directory. FolderName: \(folderName). \(error)")
            }
        }
        
    }
    
    /// Description
    /// 获取文件夹的url
    /// - Parameter folderName: 文件夹名
    /// - Returns: 文件夹url
    private func getURLForFolder(folderName: String) -> URL? {
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(folderName)
    }
    
    /// Description
    /// 获取图片url
    /// - Parameters:
    ///   - imageName: 图片名
    ///   - folderName: 文件夹名
    /// - Returns: 图片url
    private func getURLForImage(imageName: String, folderName: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: folderName) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
    }
    
}
