//
//  ReprositoryListViewController.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import UIKit
import ProgressHUD
import Loaf

protocol ReprositoryListViewProtocol: class {
    func showLoading()
    func hideLoading()
    func showError(with message: String)
    func reloadData()
    func focusOnReprository(index: Int)
}

class ReprositoryListViewController: UIViewController {

    @IBOutlet weak var statusSegmentControl: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var listCollectionView: UICollectionView!
    
    var presenter: PresenterToViewReprositoryListProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        setupCollection()
        statusSegmentControl.insertSegment(withTitle: "Not Forked", at: 2, animated: false)
        searchBar.backgroundImage = UIImage()
        searchBar.delegate = self
        presenter?.onScreenAppeared()
    }
    
    private func setupCollection(){
        listCollectionView.register(UINib(nibName: "ReprositoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ReprositoryCollectionViewCell.IDENTIFIER)
        listCollectionView.delegate = self
        listCollectionView.dataSource = self
    }
    
    @IBAction func onStatusSegmentChange(_ sender: UISegmentedControl) {
        presenter?.onFilterRequested(index: sender.selectedSegmentIndex)
    }
    

}

extension ReprositoryListViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        presenter?.onSearchRequested(searchQuery: searchBar.text ?? "")
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        presenter?.onSearchRequested(searchQuery: searchText)
    }
}

extension ReprositoryListViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.repos.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReprositoryCollectionViewCell.IDENTIFIER, for: indexPath) as! ReprositoryCollectionViewCell
        cell.config(with: presenter!.repos[indexPath.item])
       
        return cell
    }
    
}

extension ReprositoryListViewController: ReprositoryListViewProtocol{
    func showLoading() {
        ProgressHUD.show()
    }
    
    func hideLoading() {
        ProgressHUD.dismiss()
    }
    
    func showError(with message: String) {
        Loaf(message, state: .error, sender: self)
            .show()
    }
    
    func reloadData() {
        listCollectionView.reloadData()
    }
    
    func focusOnReprository(index: Int) {
        listCollectionView.scrollToItem(at: IndexPath(row: index, section: 0), at: .top, animated: true)
    }
    
    
}

