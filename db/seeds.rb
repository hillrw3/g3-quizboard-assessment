quiz = Quiz.create!(name: "State Capitols")

question = Question.new(quiz: quiz, description: "Wyoming")
PossibleAnswer.create!(question: question, description: "Laramie", correct: false)
PossibleAnswer.create!(question: question, description: "Cheyenne", correct: true)
PossibleAnswer.create!(question: question, description: "Gillette", correct: false)
PossibleAnswer.create!(question: question, description: "Casper", correct: false)

question = Question.new(quiz: quiz, description: "Colorado")
PossibleAnswer.create!(question: question, description: "Ft. Collins", correct: false)
PossibleAnswer.create!(question: question, description: "Denver", correct: true)
PossibleAnswer.create!(question: question, description: "Pueblo", correct: false)
PossibleAnswer.create!(question: question, description: "Colorado Springs", correct: false)

question = Question.new(quiz: quiz, description: "Montana")
PossibleAnswer.create!(question: question, description: "Bozeman", correct: false)
PossibleAnswer.create!(question: question, description: "Billings", correct: false)
PossibleAnswer.create!(question: question, description: "Butte", correct: false)
PossibleAnswer.create!(question: question, description: "Helena", correct: true)

question = Question.new(quiz: quiz, description: "Utah")
PossibleAnswer.create!(question: question, description: "Salt Lake City", correct: true)
PossibleAnswer.create!(question: question, description: "Provo", correct: false)
PossibleAnswer.create!(question: question, description: "Ogden", correct: false)
PossibleAnswer.create!(question: question, description: "Logan", correct: false)
