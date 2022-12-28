//
//  ReverseManager.swift
//  Reverse App
//
//  Created by Ірина Зеліско on 28.12.2022.
//

import Foundation
struct ReverseManager {
    
 static public func reverse(text: String) -> String {
    if text.isEmpty {
            return ""
        }
        
        return text.trimmingCharacters(in: .whitespacesAndNewlines)
            .components(separatedBy: " ")
            .map { String ( $0.reversed() ) }
            .joined(separator: " ")
    
}
        }
