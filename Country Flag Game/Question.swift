//
//  Question.swift
//  Country Flag Game
//
//  Created by Dylan Koehler on 1/23/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}
struct Question: Identifiable {
    var id = UUID()
    var text: Answer
    var isCorrect: [Answer]
}
