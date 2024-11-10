//
//  ViewDatos.swift
//  MiPrimeraAplicacion
//
//  Created by DISEÑO on 9/11/24.
//

import UIKit

class ViewDatos: UIViewController {
   
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var lastNameTextView: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var genreTextView: UITextField!
    @IBOutlet weak var salaryTextView: UITextField!
    @IBOutlet weak var bonoTextView: UITextField!
    var name:String = ""
    var lastName:String = ""
    var genre:String = ""
    var salary:Double = 0.0
    var bono: Double = 0.0
    var total:Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the
        
    }
    func clearTextField(){
        nameTextfield.text = ""
        lastNameTextView.text =  ""
        genreTextView.text = ""
        resultTextView.text = ""
        salaryTextView.text = ""
    }
    func calculatePrinter(){
        name = nameTextfield.text ?? ""
        lastName = lastNameTextView.text ?? ""
        genre = genreTextView.text ?? ""
        salary = Double(salaryTextView.text ?? "") ?? 0.0
        bono = Double(bonoTextView.text ?? "") ?? 0.0
        total = salary + bono
        resultTextView.text = "Nombre: \(name)\nApellido: \(lastName)\nGenero:\(genre)\nSalario:\(salary)\nTotal:\(total)"
        goToResultScreen()
    }
    
    func goToResultScreen (){
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController =
        storyboard.instantiateViewController(withIdentifier: "ResultadoViewController") as? ResultadoViewController
        
        viewController?.nameResult = name
        viewController?.lastnameResult = lastName
        viewController?.genreResult = genre
        
        self.present(viewController ?? ViewController(), animated: true, completion: nil)
    }
    @IBAction func printButton(_ sender: UIButton) {
        calculatePrinter()
    }
    @IBAction func cleanButton(_ sender: UIButton) {
        clearTextField()
    }
    
}
