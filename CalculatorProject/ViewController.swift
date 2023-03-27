//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Serhat Demir on 27.03.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outles
    @IBOutlet private weak var firstText: UITextField!
    @IBOutlet private weak var seconderText: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions
    @IBAction func sumClicked(_ sender: Any) {
        sum()
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        minus()
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        multiply()
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        divide()
    }
}

// MARK: - Helpers
private extension ViewController {
    
    func sum() {
        guard let myFirstNumber = firstText.text , let mySeconderNumber = seconderText.text else { return }
        if let firstNumber = Int(myFirstNumber) {
            if let seconderNumber = Int(mySeconderNumber) {
             let result = firstNumber + seconderNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    func minus() {
        guard let myFirstNumber = firstText.text , let mySeconderNumber = seconderText.text else { return }
        if let firstNumber = Int(myFirstNumber) {
            if let seconderNumber = Int(mySeconderNumber) {
             let result = firstNumber - seconderNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    func multiply() {
        guard let myFirstNumber = firstText.text , let mySeconderNumber = seconderText.text else { return }
        if let firstNumber = Int(myFirstNumber) {
            if let seconderNumber = Int(mySeconderNumber) {
             let result = firstNumber * seconderNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    func divide() {
        guard let myFirstNumber = firstText.text , let mySeconderNumber = seconderText.text else { return }
        if let firstNumber = Int(myFirstNumber) {
            if let seconderNumber = Int(mySeconderNumber) {
             let result = firstNumber / seconderNumber
                resultLabel.text = String(result)
            }
        }
    }
}
