//
//  ResultadoViewController.swift
//  MiPrimeraAplicacion
//
//  Created by DISEÑO on 9/11/24.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    var nameResult: String = ""
    var lastnameResult: String = ""
    var genreResult: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView()
    }
    
    
    func resultView (){
        nameLabel.text = nameResult
        lastnameLabel.text = lastnameResult
        genreLabel.text = genreResult
    }

   

}
