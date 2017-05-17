//
//  TesteCollectionViewController.swift
//  MyCollectionView
//
//  Created by Mauricio Junior on 5/17/17.
//  Copyright © 2017 Mauricio Junior. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class TesteCollectionViewController: UICollectionViewController {

    var _collectionArray: [String] = ["Imagem 1", "Imagem 2", "Imagem 3", "Imagem 4", "Imagem 5", "Imagem 6", "Imagem 7", "Imagem 8", "Imagem 9", "Imagem 10"]
    var _collectionImagem: [String] = ["image1.png", "image2.png", "image3.png", "image4.png","image4.png","image4.png","image4.png","image4.png","image4.png","image4.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self._collectionArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: minhaColecao = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! minhaColecao
    
        cell.lblNome.text = self._collectionArray[indexPath.row]
        
        let myImage = self._collectionImagem[indexPath.row]
        let image = UIImage.init(named: myImage)
        
        cell.foto.image = image
        
        cell.foto.layer.cornerRadius = 60
        cell.foto.clipsToBounds = true
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("Clicou no: \(self._collectionArray[indexPath.row])")
        
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
