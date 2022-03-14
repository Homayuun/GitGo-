//
//  TrendingRepoCell.swift
//  MyVersi
//
//  Created by Homayun on 1/21/1400 AP.
//

import UIKit
import RxSwift
import RxCocoa
import SafariServices

class TrendingRepoCell: UITableViewCell {
    
    var disposeBag = DisposeBag()
    
    @IBOutlet weak var repoIV: UIImageView!
    @IBOutlet weak var repoNameLbl: UILabel!
    @IBOutlet weak var repoDescLbl: UILabel!
    @IBOutlet weak var forksNumberLbl: UILabel!
    @IBOutlet weak var languageLbl: UILabel!
    @IBOutlet weak var contributorsLbl: UILabel!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var readMoreBtn: UIButton!
    
    private var repoUrl: String?
    
    func configureCell(repo: Repo){
        repoIV.image = repo.image
        repoNameLbl.text = repo.name
        repoDescLbl.text = repo.description
        forksNumberLbl.text = String(describing: repo.numberOfForks)
        languageLbl.text = repo.language
        contributorsLbl.text = String(describing: repo.numberOfContributors)
        repoUrl = repo.repoUrl
        readMoreBtn.rx.tap.subscribe(onNext:{
            self.window?.rootViewController?.presentSFSafariVCfor(url: self.repoUrl!)
        }).disposed(by: disposeBag)

    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        backView.layer.shadowOpacity = 0.6
        backView.layer.shadowRadius = 5.0
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)
        backView.setGradientBackGround(colorOne: #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1), colorTwo: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1), colorThree: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))

    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
