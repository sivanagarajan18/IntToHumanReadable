//
//  IntToHumViewModel.swift
//  IntegerToHumanReadable
//
//  Created by Salzer on 07/07/21.
//

import Foundation

protocol intNumDelegate: Any {
    func returnString(_ stringValue: String)
}

class IntToHumViewModel : NSObject {
    enum ValidationError: LocalizedError {
        case emptyError
        case notValid
        case covertionProblem
        var errorDescription: String? {
            switch self {
            case .emptyError:
                return "Please enter value"
            case .notValid:
                return "Not Valid Number"
            case .covertionProblem:
                return "Can't Convert"
            }
        }
    }
    var delegate: intNumDelegate?
    private(set) var returnString : String! {
        didSet {
            self.delegate?.returnString(returnString)
        }
    }
    override init() {
        super.init()
    }
    
    
    func convert(_ number: String?) throws {
        if let intVal = number {
            if intVal.isEmpty {
                returnString = "Enter the number"
                throw ValidationError.emptyError
            }
            if let num = Int(intVal) {
                let numberValue = NSNumber(value: num)
                let formatter = NumberFormatter()
                formatter.locale = .current
                formatter.numberStyle = .spellOut
                returnString = formatter.string(from: numberValue)
            } else {
                returnString = "Not Valid Number"
                throw ValidationError.notValid
            }
        } else {
            returnString = "Can't convert"
            throw ValidationError.covertionProblem
        }
    }
}

