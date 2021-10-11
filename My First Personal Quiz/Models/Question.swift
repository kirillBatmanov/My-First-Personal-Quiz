//
//  Question.swift
//  My First Personal Quiz
//
//  Created by Кирилл Батманов on 11.10.2021.
//

import QuartzCore


struct Question {
    let title: String
    let answers: [Answer]
    let type: ResponseType
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "Как часто вы обижаетесь?",
                answers: [
                    Answer(title: "Никогда", people: .deliberate),
                    Answer(title: "Редко", people: .adequate),
                    Answer(title: "Часто", people: .abuser),
                    Answer(title: "Постоянно", people: .toxic)
                    ],
                type: .single
            ),
            Question(
                title: "Что характеризует вас?",
                answers: [
                    Answer(title: "Плакса", people: .abuser),
                    Answer(title: "Негативист", people: .toxic),
                    Answer(title: "Зануда", people: .adequate),
                    Answer(title: "Оптимист", people: .deliberate)
                    ],
                type: .multiple
            ),
            Question(
                title: "Как часто вы обрываете связь и исчезаете?",
                answers: [
                    Answer(title: "Никогда", people: .deliberate),
                    Answer(title: "Редко", people: .adequate),
                    Answer(title: "Часто", people: .abuser),
                    Answer(title: "Постоянно", people: .toxic)
                    ],
                type: .ranged
            )
        ]
    }
}

struct Answer {
    let title: String
    let people: People
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum People: String {
    case deliberate = "Осознанный 🧘"
    case adequate = "Адекватный 🙆‍♀️"
    case abuser = "Абьюзер 🦹‍♀️"
    case toxic = "Токсичный 🧟‍♂️"
}
