//
//  GalleryViewController.swift
//  Peers!
//
//  Created by Anjali Mangla on 7/31/18.
//  Copyright © 2018 Mates. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var galleryImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getImage(imageName: "image.png")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getImage(imageName: String){
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)
        if fileManager.fileExists(atPath: imagePath) {
            //galleryImage.image = UIImage(contentsOfFile: imagePath)
            let image = UIImage(contentsOfFile: imagePath)
            let newImage = UIImage(cgImage: (image?.cgImage!)!, scale: (image?.scale)!, orientation: .right)
            galleryImage.image = newImage
        } else {
            print("Sorry, no image")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
