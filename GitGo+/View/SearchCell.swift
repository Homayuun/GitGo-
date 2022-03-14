//
//  SearchCell.swift
//  MyVersi
//
//  Created by Homayun on 2/16/1400 AP.
//

import UIKit

class SearchCell: UITableViewCell {
    @IBOutlet weak var repoImage: UIImage!
    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var repoDesc: UILabel!
    @IBOutlet weak var countributorsLbl: UILabel!
    @IBOutlet weak var languageLbl: UILabel!
    @IBOutlet weak var backView: UIView!
    
    public private(set) var repoUrl: String?
    
    func configureCell(repo: Repo) {
        repoUrl = repo.repoUrl
        repoName.text = repo.name
        repoDesc.text = repo.description
        countributorsLbl.text = String(describing: repo.numberOfForks)
        languageLbl.text = repo.language
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.layer.cornerRadius = 15.0
    }

    
}
