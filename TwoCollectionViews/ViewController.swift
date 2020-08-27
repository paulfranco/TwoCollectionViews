//
//  ViewController.swift
//  TwoCollectionViews
//
//  Created by Paul Franco on 8/27/20.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    var imageArrayA = [UIImage(named: "jersey1"), UIImage(named: "jersey2"), UIImage(named: "jersey3"), UIImage(named: "jersey4"),UIImage(named: "jersey5"), UIImage(named: "jersey6")]
    
    var imageArrayB = [UIImage(named: "shoe1"), UIImage(named: "shoe2"), UIImage(named: "shoe3"), UIImage(named: "shoe4"),UIImage(named: "shoe5"), UIImage(named: "shoe6")]
    
    var labelA = ["Jersey 1", "jersey 2", "Jersey 3", "Jersey 4", "Jersey 5", "Jersey 6"]
    
    var labelB = ["Shoe 1", "Shoe 2", "Shoe 3", "Shoe 4", "Shoe 5", "Shoe 6"]
    
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewA.dataSource = self
        collectionViewA.delegate = self
        collectionViewB.dataSource = self
        collectionViewB.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionViewA {
            return imageArrayA.count
        }
        return imageArrayB.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewA {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
            cellA.imageA.image = imageArrayA[indexPath.row]
            cellA.labelA.text = labelA[indexPath.row]
            return cellA
        } else {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
            cellB.imageB.image = imageArrayB[indexPath.row]
            cellB.labelB.text = labelB[indexPath.row]
            return cellB
        }
    }

    
}

