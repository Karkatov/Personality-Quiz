//
//  Question.swift
//  Personal Quiz
//
//  Created by Duxxless on 16.11.2021.
//

struct Question {
    let text: String 
    let type: ResponseType
    let answers: [Answer]

    func getQuestions() -> [Question] {
        return [
            Question(
                text: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle)
                ]
            )
        ]
    }
}
