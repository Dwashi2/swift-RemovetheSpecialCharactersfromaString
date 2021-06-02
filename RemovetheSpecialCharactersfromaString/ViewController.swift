//
//  ViewController.swift
//  RemovetheSpecialCharactersfromaString
//
//  Created by Daniel Washington Ignacio on 02/06/21.
//

/*
 Create a function that takes a string, removes all "special" characters (e.g. ., !, @, #, $, %, ^, &, \, *, (, )) and returns the new string. The only non-alphanumeric characters allowed are dashes -, underscores _ and spaces.

 Examples

 removeSpecialCharacters("The quick brown fox!") ➞ "The quick brown fox"

 removeSpecialCharacters("%fd76$fd(-)6GvKlO.") ➞ "fd76fd-6GvKlO"

 removeSpecialCharacters("D0n$c sed 0di0 du1") ➞ "D0nc sed 0di0 du1"
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.removeSpecialCharacters("The quick brown fox!"))
        print(self.removeSpecialCharacters("%fd76$fd(-)6GvKlO."))
        print(self.removeSpecialCharacters("D0n$c sed 0di0 du1"))
    }

    
    func removeSpecialCharacters(_ str: String) -> String {
        var resultString = ""
            for n in str {
                switch n {
                case "!", "@", "#", "$", "%", "^", "\\", "*", "(", ")", "|", "&", "<", ">", "!", ",", "`", "+", ".", "{", "}", "~", "=", "[", "]", "?":
                    break
                default:
                    resultString.append(n)
                }
            }

            return resultString
    }

}

