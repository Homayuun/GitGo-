//
//  TrendingRepoCell.swift
//  MyVersi
//
//  Created by Homayun on 1/21/1400 AP.
//


import UIKit
import SafariServices

extension UIViewController {
    func presentSFSafariVCfor(url: String){
        let readmeUrl = URL(string: url + readmeSegment )
        let safariVC = SFSafariViewController(url: readmeUrl!)
        present(safariVC, animated: true, completion: nil)
    }
}
