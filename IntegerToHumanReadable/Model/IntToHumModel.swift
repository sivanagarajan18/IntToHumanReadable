//
//  IntToHumModel.swift
//  IntegerToHumanReadable
//
//  Created by Siva N on 16/07/21.
//

import Foundation

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

func onesTensCovert(_ value: Int, pos: Int) -> String {
    switch pos {
    case 0:
       return oneString(value)
    case 1:
       return tenString(value)
    case 2:
       return hundredString(value)
    default:
        return ""
    }
}

func elevenConvert(_ num: Int) -> String {
    switch num {
    case 0:
        return "Ten"
    case 1:
        return "Eleven"
    case 2:
        return "Twelve"
    case 3:
        return "Thirteen"
    case 4:
        return "Fourteen"
    case 5:
        return "Fifteen"
    case 6:
        return "Sixteen"
    case 7:
        return "Seventeen"
    case 8:
        return "Eighteen"
    case 9:
        return "Nineteen"
    default:
        return "-"
    }
}

func oneString(_ value: Int) -> String {
    switch value {
    case 0:
        return ""
    case 1:
        return "One"
    case 2:
        return "Two"
    case 3:
        return "Three"
    case 4:
        return "Four"
    case 5:
        return "Five"
    case 6:
        return "Six"
    case 7:
        return "Seven"
    case 8:
        return "Eight"
    case 9:
        return "Nine"
    default:
        return "-"
    }
}

func tenString(_ value: Int) -> String {
    switch value {
    case 0:
        return ""
    case 1:
        return "Ten"
    case 2:
        return "Twenty"
    case 3:
        return "Thirty"
    case 4:
        return "Fourty"
    case 5:
        return "Fifty"
    case 6:
        return "Sixty"
    case 7:
        return "Seventy"
    case 8:
        return "Eighty"
    case 9:
        return "Ninety"
    default:
        return "-"
    }
}

func hundredString(_ value: Int) -> String {
    switch value {
    case 0:
        return ""
    case 1:
        return "One Hundred"
    case 2:
        return "Two Hundred"
    case 3:
        return "Three Hundred"
    case 4:
        return "Four Hundred"
    case 5:
        return "Five Hundred"
    case 6:
        return "Six Hundred"
    case 7:
        return "Seven Hundred"
    case 8:
        return "Eight Hundred"
    case 9:
        return "Nine Hundred"
    default:
        return "-"
    }
}
