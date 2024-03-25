import Foundation

/**
 * My program rolls a random number between 1-6 for user to guess.
 *
 * - author:  Kent Gatera
 * - version: 1.0
 * - since:   2024-Mar-24
 */

// Defining the error cases.
enum ErrorCases: Error {
    case invalidNumeral
}

func boardFoot(width: Int, height: Int) throws -> Int {
    let boardFoot = 144
    // Formula to calculate length of a board foot.
    let boardLength = boardFoot / (width * height)
    // returning the answer.
    return boardLength
}

do {
    // User input prompt
    print("What is the width of the board foot?(cm): ", terminator: "")
    // Getting width and height then casting it to int.
    if let userWidth = readLine(), let widthAsInt = Int(userWidth) {
        print("What is the height of the board foot?(cm): ", terminator: "")
        if let userHeight = readLine(), let heightAsInt = Int(userHeight) {
            // Printing the results.
            print("The board foot must be \(try boardFoot(width: widthAsInt, height: heightAsInt)) cm long for it to have a volume of 144 cm^3.")
        // Else cases in case width/height is not casted to int.
        } else {
            throw ErrorCases.invalidNumeral
        }
    } else {
        throw ErrorCases.invalidNumeral
    }
} catch {
    // Instructions for catch case.
    print("Please enter a valid integer amount for width and height.")
}
