//
//  MovieViewController.swift
//  FavoMovie
//
//  Created by Tim Tseng on 8/11/17.
//  Copyright © 2017 Tim Tseng. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    var movie: Movie?
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var castName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            
        movieName.text = movie.name
        castName.text = movie.cast
        imageView.image = UIImage(named: movie.name)
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as? EditTableViewController
        controller?.name = movie?.name
        controller?.cast = movie?.cast
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
