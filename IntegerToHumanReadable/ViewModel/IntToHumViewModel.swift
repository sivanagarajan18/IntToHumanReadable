//
//  IntToHumViewModel.swift
//  IntegerToHumanReadable
//
//  Created by Siva on 07/07/21.
//

import Foundation

protocol viewModel {
    mutating func convert() throws -> String
}

struct IntHumViewModel: viewModel {
    var returnValue: String?
    var numValue: String?
}

extension IntHumViewModel {
    
    mutating func convert() throws -> String{
        try convertion()
        return returnValue ?? "Empty"
    }
    
    mutating private func convertion() throws{
        if let intVal = numValue {
            if intVal.isEmpty {
                returnValue = "Enter the number"
                throw ValidationError.emptyError
            }
            if let num = Int(intVal) {
                returnValue = seperation(num)
            } else {
                returnValue = "Not Valid Number"
                throw ValidationError.notValid
            }
        } else {
            returnValue = "Can't convert"
            throw ValidationError.covertionProblem
        }
    }
    
    func seperation(_ value: Int) -> String {
        var arrayInt = [[Int]]()
        var onesArray = [Int]()
        var num = value
        onesArray.append(num%10)
        while num >= 10 {
          num = num/10
            onesArray.append(num%10)
            if onesArray.count == 3 {
                arrayInt.append(onesArray)
                onesArray.removeAll()
            }
        }
        if !onesArray.isEmpty {
            arrayInt.append(onesArray)
        }
        var val = ""
        for i in 0 ..< arrayInt.count {
            switch i {
            case 1:
                val = "Thousand" + " " + val
            case 2:
                val = "Million" + " " + val
            case 3:
                val = "Billion" + " " + val
            case 4:
                val = "Trillion" + " " + val
            case 5:
                val = "Quadrillion" + " " + val
            case 6:
                val = "Quintillion" + " " + val
            case 7:
                val = "Sextillion" + " " + val
            default:break
            }
            if arrayInt[i].count == 2 && arrayInt[i][1] == 1{
                val = elevenConvert(arrayInt[i][0]) + " " + val
            } else {
                for j in 0 ..< arrayInt[i].count {
                    val = onesTensCovert(arrayInt[i][j], pos: j) + " " + val
                }
            }
        }
        return val
    }
}
