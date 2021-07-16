//
//  ViewController.swift
//  IntegerToHumanReadable
//
//  Created by Salzer on 07/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLab: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    private var viewModel :IntHumViewModel = IntHumViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer()
        tap.addTarget(self, action: #selector(dismissKeyBoard))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyBoard() {
        self.view.endEditing(true)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        do {
            viewModel.numValue = inputTextField.text
            self.resultLab.text = try viewModel.convert().capitalized
        } catch {
            present(error)
        }
    }
    
    func returnString(_ stringValue: String) {
        self.resultLab.text = stringValue.capitalized
        self.view.endEditing(true)
    }
}

extension UIViewController {
    
    private func present(_ dismissableAlert: UIAlertController) {
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel)
        dismissableAlert.addAction(dismissAction)
        present(dismissableAlert, animated: true)
    }
    
    func presentAlert(with message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        present(alert)
    }
    
    func present(_ error: Error) {
        presentAlert(with: error.localizedDescription)
    }
}
