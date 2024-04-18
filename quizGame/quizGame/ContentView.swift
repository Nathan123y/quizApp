//
//  ContentView.swift
//  quizGame
//
//  Created by StudentAM on 4/12/24.
//

import SwiftUI

// Struct to represent a topic containing questions
struct Topic {
    let name: String
    let questions: [Question]
}

// Struct to represent a single question
struct Question {
    let text: String
    let options: [String]
    let correctAnswer: String
}

// ContentView struct, the main view of the app
struct ContentView: View {
    
    // Array of topics with questions
    let topics: [Topic] = [
        Topic(name: "General Knowledge", questions: [
            // General knowledge questions
            Question(text: "1. What is the capital of France?", options: ["Paris", "Berlin", "London", "Madrid"], correctAnswer: "Paris"),
            Question(text: "2. Who wrote 'Hamlet'?", options: ["William Shakespeare", "Charles Dickens", "Jane Austen", "Leo Tolstoy"], correctAnswer: "William Shakespeare"),
            Question(text: "3. What is the chemical symbol for gold?", options: ["Au", "Ag", "Fe", "Hg"], correctAnswer: "Au"),
            Question(text: "4. Which planet is known as the Red Planet?", options: ["Venus", "Mars", "Jupiter", "Saturn"], correctAnswer: "Mars"),
            Question(text: "5. What is the largest ocean on Earth?", options: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"], correctAnswer: "Pacific Ocean"),
            Question(text: "6. Who painted the Mona Lisa?", options: ["Vincent van Gogh", "Leonardo da Vinci", "Pablo Picasso", "Michelangelo"], correctAnswer: "Leonardo da Vinci"),
            Question(text: "7. What is the capital of Japan?", options: ["Beijing", "Tokyo", "Seoul", "Shanghai"], correctAnswer: "Tokyo"),
            Question(text: "8. What is the chemical symbol for water?", options: ["O2", "H2O", "CO2", "H2SO4"], correctAnswer: "H2O"),
            Question(text: "9. Who discovered penicillin?", options: ["Alexander Fleming", "Louis Pasteur", "Marie Curie", "Robert Koch"], correctAnswer: "Alexander Fleming"),
            Question(text: "10. Who is the author of 'The Great Gatsby'?", options: ["F. Scott Fitzgerald", "Ernest Hemingway", "John Steinbeck", "Mark Twain"], correctAnswer: "F. Scott Fitzgerald"),
        ]),
        Topic(name: "Science", questions: [
            // Science questions
            Question(text: "1. What is the chemical symbol for oxygen?", options: ["O", "H", "C", "O2"], correctAnswer: "O"),
            Question(text: "2. Who proposed the theory of relativity?", options: ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Stephen Hawking"], correctAnswer: "Albert Einstein"),
            Question(text: "3. What is the process by which plants make their food?", options: ["Photosynthesis", "Respiration", "Fermentation", "Oxidation"], correctAnswer: "Photosynthesis"),
            Question(text: "4. What is the unit of measurement for force?", options: ["Watt", "Newton", "Joule", "Pascal"], correctAnswer: "Newton"),
            Question(text: "5. What is the freezing point of water in Celsius?", options: ["0°C", "100°C", "-273.15°C", "-32°F"], correctAnswer: "0°C"),
            Question(text: "6. What is the study of living organisms called?", options: ["Physics", "Chemistry", "Biology", "Geology"], correctAnswer: "Biology"),
            Question(text: "7. Who invented the telephone?", options: ["Thomas Edison", "Alexander Graham Bell", "Nikola Tesla", "Guglielmo Marconi"], correctAnswer: "Alexander Graham Bell"),
            Question(text: "8. What is the largest organ in the human body?", options: ["Liver", "Lung", "Brain", "Skin"], correctAnswer: "Skin"),
            Question(text: "9. What is the chemical formula for table salt?", options: ["NaCl", "H2O", "CO2", "C6H12O6"], correctAnswer: "NaCl"),
            Question(text: "10. What is the speed of light in a vacuum?", options: ["299,792,458 m/s", "100 m/s", "3,000,000 m/s", "150,000,000 m/s"], correctAnswer: "299,792,458 m/s"),
        ]),
        Topic(name: "History", questions: [
            // History questions
            Question(text: "1. Who was the first president of the United States?", options: ["Abraham Lincoln", "Thomas Jefferson", "George Washington", "John Adams"], correctAnswer: "George Washington"),
            Question(text: "2. In which year did World War II end?", options: ["1945", "1939", "1941", "1943"], correctAnswer: "1945"),
            Question(text: "3. Who was the founder of the Ottoman Empire?", options: ["Suleiman the Magnificent", "Mehmed the Conqueror", "Osman I", "Selim I"], correctAnswer: "Osman I"),
            Question(text: "4. Who was the first female Prime Minister of the United Kingdom?", options: ["Margaret Thatcher", "Theresa May", "Indira Gandhi", "Angela Merkel"], correctAnswer: "Margaret Thatcher"),
            Question(text: "5. What was the main ideology of the Nazis?", options: ["Capitalism", "Communism", "Fascism", "Socialism"], correctAnswer: "Fascism"),
            Question(text: "6. Which ancient civilization built the pyramids?", options: ["Greeks", "Romans", "Mayans", "Egyptians"], correctAnswer: "Egyptians"),
            Question(text: "7. Who was the last ruler of the Roman Empire?", options: ["Julius Caesar", "Augustus", "Nero", "Constantine the Great"], correctAnswer: "Constantine the Great"),
            Question(text: "8. What was the name of the ship on which Charles Darwin sailed during his voyage?", options: ["Endeavour", "Bounty", "Beagle", "Discovery"], correctAnswer: "Beagle"),
            Question(text: "9. Who wrote 'The Communist Manifesto'?", options: ["Karl Marx", "Friedrich Engels", "Vladimir Lenin", "Leon Trotsky"], correctAnswer: "Karl Marx"),
            Question(text: "10. Who was the first emperor of China?", options: ["Qin Shi Huang", "Han Wudi", "Emperor Taizong", "Kangxi Emperor"], correctAnswer: "Qin Shi Huang"),
        ]),
        Topic(name: "Geography", questions: [
            // Geography questions
            Question(text: "1. What is the longest river in the world?", options: ["Amazon", "Nile", "Yangtze", "Mississippi"], correctAnswer: "Nile"),
            Question(text: "2. What is the capital of Australia?", options: ["Sydney", "Melbourne", "Canberra", "Brisbane"], correctAnswer: "Canberra"),
            Question(text: "3. Which country is known as the Land of the Rising Sun?", options: ["China", "Japan", "South Korea", "Vietnam"], correctAnswer: "Japan"),
            Question(text: "4. What is the smallest continent by land area?", options: ["Europe", "Africa", "Australia", "Antarctica"], correctAnswer: "Australia"),
            Question(text: "5. What is the largest desert in the world?", options: ["Sahara", "Gobi", "Antarctica", "Arabian"], correctAnswer: "Sahara"),
            Question(text: "6. Which river runs through Egypt?", options: ["Nile", "Amazon", "Yangtze", "Mississippi"], correctAnswer: "Nile"),
            Question(text: "7. Which city is known as the 'City of Love'?", options: ["Paris", "Rome", "Venice", "Vienna"], correctAnswer: "Paris"),
            Question(text: "8. Which country is known as the 'Land of a Thousand Lakes'?", options: ["Canada", "Finland", "Sweden", "Norway"], correctAnswer: "Finland"),
            Question(text: "9. What is the highest mountain peak in the world?", options: ["K2", "Mount Everest", "Kangchenjunga", "Lhotse"], correctAnswer: "Mount Everest"),
            Question(text: "10. What is the largest ocean on Earth?", options: ["Atlantic", "Indian", "Arctic", "Pacific"], correctAnswer: "Pacific")
        ])
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    // Title
                    Text("Quiz Time!!")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 380, height: 100)
                        .background(Color.blue)
                        .padding(.bottom, 200)
                    
                    // Navigation link to topic selection view
                    NavigationLink(destination: TopicSelectionView(topics: topics)) {
                        Text("Begin")
                            .font(.system(size: 30))
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(4)
                    }
                }
                .padding()
            }
        }
    }
}

// View for selecting a topic
struct TopicSelectionView: View {
    let topics: [Topic]
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    // Title
                    Text("Choose a Topic")
                        .font(.system(size: 30))
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                    ForEach(topics, id: \.name) { topic in
                        // Navigation links for each topic
                        NavigationLink(destination: QuestionView(questions: topic.questions)) {
                            Text(topic.name)
                                .font(.system(size: 20))
                                .frame(width: 200, height: 50)
                                .background(Color.yellow)
                                .foregroundColor(.black)
                                .cornerRadius(4)
                        }
                    }
                }
            }
        }
    }
    
    // View for answering questions
    struct QuestionView: View {
        let questions: [Question]
        
        @State private var currentQuestionIndex = 0
        @State private var score = 0
        @State private var quizEnded = false
        
        var body: some View {
            ZStack {
                // Background image
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    if !quizEnded {
                        
                        VStack {
                            // Display score
                            Text("Score: \(score)")
                                .font(.title)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .bold()
                            
                            // Display question
                            VStack {
                                Text(questions[currentQuestionIndex].text)
                                    .font(.headline)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            }
                            .padding()
                            
                            // Display options
                            VStack(spacing: 20) {
                                ForEach(questions[currentQuestionIndex].options.indices, id: \.self) { index in
                                    Button(action: {
                                        // Check if answer is correct
                                        if questions[currentQuestionIndex].options[index] == questions[currentQuestionIndex].correctAnswer {
                                            score += 1
                                        }
                                        
                                        // Move to the next question
                                        if currentQuestionIndex < questions.count - 1 {
                                            currentQuestionIndex += 1
                                        } else {
                                            quizEnded = true
                                        }
                                        
                                    }) {
                                        Text(questions[currentQuestionIndex].options[index])
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 50)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                    }
                                }
                            }
                            .padding()
                        }
                    } else {
                        
                        VStack {
                            // Quiz ended message
                            Text("Quiz Ended!")
                                .font(.title)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .bold()
                            
                            Text("Final Score: \(score) / \(questions.count)")
                                .font(.headline)
                                .padding()
                                .background(Color.yellow)
                            
                            Text("Percentage: \(Int(Double(score) / Double(questions.count) * 100))%")
                                .font(.headline)
                                .padding()
                                .background(Color.yellow)
                            
                            
                            Button(action: {
                                currentQuestionIndex = 0
                                score = 0
                                quizEnded = false
                                
                            }) {
                                Text("Try Again")
                                    .font(.headline)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
