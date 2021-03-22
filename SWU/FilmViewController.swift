//
//  FilmViewController.swift
//  SWU
//
//  Created by Peggy Calderon on 22/03/2021.
//

import UIKit

class FilmViewController: UIViewController {
    
    var film : SWMovie?

    @IBOutlet weak var imgMovie: UIImageView!
    @IBOutlet weak var titre: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgMovie.image = film?.img
        titre.text = film?.title

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
