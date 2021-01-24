//
//  ReprositoryListViewController.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import UIKit
import SkeletonView

class ReprositoryListViewController: UIViewController {

    @IBOutlet weak var statusSegmentControl: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var listCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        setupCollection()
        statusSegmentControl.insertSegment(withTitle: "Not Forked", at: 2, animated: false)
        searchBar.backgroundImage = UIImage()
    }
    
    private func setupCollection(){
        listCollectionView.register(UINib(nibName: "ReprositoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: ReprositoryCollectionViewCell.IDENTIFIER)
        listCollectionView.delegate = self
        listCollectionView.dataSource = self
        listCollectionView.showAnimatedGradientSkeleton()
    }
    
    @IBAction func onStatusSegmentChange(_ sender: UISegmentedControl) {
        
    }
    

}

extension ReprositoryListViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReprositoryCollectionViewCell.IDENTIFIER, for: indexPath) as! ReprositoryCollectionViewCell
        cell.showAnimatedGradientSkeleton()
        return cell
    }
    
}

