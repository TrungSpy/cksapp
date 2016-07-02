//
//  GameSelectViewController.swift
//  cksapp
//
//  Created by Bhupendra Singh on 7/2/16.
//  Copyright © 2016 Bhupendra Singh. All rights reserved.
//

import UIKit

class GameSelectViewController: BaseCollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let collectionView = self.collectionView {
            collectionView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
            self.setSectionManager(GameSelectSectionManager(title: "", collectionView: collectionView))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}