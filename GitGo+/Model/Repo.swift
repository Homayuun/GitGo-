//
//  Repo.swift
//  MyVersi
//
//  Created by Homayun on 1/21/1400 AP.
//
import UIKit
import Foundation
   
    //.....................................................

class Repo {
    public private(set) var image: UIImage
    public private(set) var name: String
    public private(set) var description: String
    public private(set) var numberOfForks: Int
    public private(set) var language: String
    public private(set) var numberOfContributors: Int
    public private(set) var repoUrl: String
    
    //...................................................
    
    init(image: UIImage,name: String,description: String,numberOfForks: Int, language:String,numberOfContributors: Int, repoUrl:String) {
        self.image = image
        self.name = name
        self.description = description
        self.numberOfForks = numberOfForks
        self.language = language
        self.numberOfContributors = numberOfContributors
        self.repoUrl = repoUrl
        
    }
}
