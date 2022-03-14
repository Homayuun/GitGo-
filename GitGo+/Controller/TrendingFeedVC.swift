//
//  TrendingFeedVC.swift
//  MyVersi
//
//  Created by Homayun on 1/20/1400 AP.
//

import UIKit
import RxSwift
import RxCocoa

class TrendingFeedVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let refreshControl = UIRefreshControl()
    let dataSource = PublishSubject<[Repo]>()
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //1
        tableView.refreshControl = refreshControl
        refreshControl.tintColor = UIColor.white
        refreshControl.attributedTitle = NSAttributedString(string: "Fetching github repos ...",attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,NSAttributedString.Key.font: UIFont(name:"AvenirNext-DemiBold",size: 16.0)!])
        refreshControl.addTarget(self, action: #selector(fetchData), for: .valueChanged)
        
        fetchData()
        dataSource.bind(to: tableView.rx.items(cellIdentifier: "trendingRepoCell")) {
            (row, repo: Repo, cell: TrendingRepoCell) in
            cell.configureCell(repo: repo)
        }.disposed(by: disposeBag)
    }
    @objc func fetchData(){
            DownloadService.instance.downloadTrendingRepos { (trendingArray) in
                self.dataSource.onNext(trendingArray)
                self.refreshControl.endRefreshing()
            }
        }
        
    @objc func refreshData(_ sender: Any) {
        DownloadService.instance.downloadTrendingRepos { (trendingReposArray) in
            self.dataSource.onNext(trendingReposArray)
            self.refreshControl.endRefreshing()
        }
    }
    
    @objc func manualRefresh() {
        if let refreshControl = self.tableView.refreshControl {
            tableView.setContentOffset(CGPoint(x: 0, y: -refreshControl.frame.height), animated: true)
            tableView.refreshControl?.beginRefreshing()
            tableView.refreshControl?.sendActions(for: .valueChanged)
        }
    }
}
