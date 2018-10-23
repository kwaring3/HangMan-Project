//
//  main.swift
//  Hang4
//
//  Created by Kevin Waring on 10/23/18.
//  Copyright © 2018 Kevin Waring. All rights reserved.
//


import Foundation

let allWords = ["able", "about", "account", "acid", "across", "addition", "adjustment", "advertisement", "after", "again", "against", "agreement", "almost", "among", "amount", "amusement", "angle", "angry", "animal", "answer", "apparatus", "apple", "approval", "arch", "argument", "army", "attack", "attempt", "attention", "attraction", "authority", "automatic", "awake", "baby", "back", "balance", "ball", "band", "base", "basin", "basket", "bath", "beautiful", "because", "before", "behaviour", "belief", "bell", "bent", "berry", "between", "bird", "birth", "bite", "bitter", "black", "blade", "blood", "blow", "blue", "board", "boat", "body", "boiling", "bone", "book", "boot", "bottle", "brain", "brake", "branch", "brass", "bread", "breath", "brick", "bridge", "bright", "broken", "brother", "brown", "brush", "bucket", "building", "bulb", "burn", "burst", "business", "butter", "button", "cake", "camera", "canvas", "card", "care", "carriage", "cart", "cause", "certain", "chain", "chalk", "chance", "change", "cheap", "cheese", "chemical", "chest", "chief", "chin", "church", "circle", "clean", "clear", "clock", "cloth", "cloud", "coal", "coat", "cold", "collar", "colour", "comb", "come", "comfort", "committee", "common", "company", "comparison", "competition", "complete", "complex", "condition", "connection", "conscious", "control", "cook", "copper", "copy", "cord", "cork", "cotton", "cough", "country", "cover", "crack", "credit", "crime", "cruel", "crush", "current", "curtain", "curve", "cushion", "damage", "danger", "dark", "daughter", "dead", "dear", "death", "debt", "decision", "deep", "degree", "delicate", "dependent", "design", "desire", "destruction", "detail", "development", "different", "digestion", "direction", "dirty", "discovery", "discussion", "disease", "disgust", "distance", "distribution", "division", "door", "doubt", "down", "drain", "drawer", "dress", "drink", "driving", "drop", "dust", "early", "earth", "east", "edge", "education", "effect", "elastic", "electric", "engine", "enough", "equal", "error", "even", "event", "ever", "every", "example", "exchange", "existence", "expansion", "experience", "expert", "face", "fact", "fall", "false", "family", "farm", "father", "fear", "feather", "feeble", "feeling", "female", "fertile", "fiction", "field", "fight", "finger", "fire", "first", "fish", "fixed", "flag", "flame", "flat", "flight", "floor", "flower", "fold", "food", "foolish", "foot", "force", "fork", "form", "forward", "fowl", "frame", "free", "frequent", "friend", "from", "front", "fruit", "full", "future", "garden", "general", "girl", "give", "glass", "glove", "goat", "gold", "good", "government", "grain", "grass", "great", "green", "grey", "grip", "group", "growth", "guide", "hair", "hammer", "hand", "hanging", "happy", "harbour", "hard", "harmony", "hate", "have", "head", "healthy", "hear", "hearing", "heart", "heat", "help", "high", "history", "hole", "hollow", "hook", "hope", "horn", "horse", "hospital", "hour", "house", "humour", "idea", "important", "impulse", "increase", "industry", "insect", "instrument", "insurance", "interest", "invention", "iron", "island", "jelly", "jewel", "join", "journey", "judge", "jump", "keep", "kettle", "kick", "kind", "kiss", "knee", "knife", "knot", "knowledge", "land", "language", "last", "late", "laugh", "lead", "leaf", "learning", "leather", "left", "letter", "level", "library", "lift", "light", "like", "limit", "line", "linen", "liquid", "list", "little", "living", "lock", "long", "look", "loose", "loss", "loud", "love", "machine", "make", "male", "manager", "mark", "market", "married", "mass", "match", "material", "meal", "measure", "meat", "medical", "meeting", "memory", "metal", "middle", "military", "milk", "mind", "mine", "minute", "mist", "mixed", "money", "monkey", "month", "moon", "morning", "mother", "motion", "mountain", "mouth", "move", "much", "muscle", "music", "nail", "name", "narrow", "nation", "natural", "near", "necessary", "neck", "need", "needle", "nerve", "news", "night", "noise", "normal", "north", "nose", "note", "number", "observation", "offer", "office", "only", "open", "operation", "opinion", "opposite", "orange", "order", "organization", "ornament", "other", "oven", "over", "owner", "page", "pain", "paint", "paper", "parallel", "parcel", "part", "past", "paste", "payment", "peace", "pencil", "person", "physical", "picture", "pipe", "place", "plane", "plant", "plate", "play", "please", "pleasure", "plough", "pocket", "point", "poison", "polish", "political", "poor", "porter", "position", "possible", "potato", "powder", "power", "present", "price", "print", "prison", "private", "probable", "process", "produce", "profit", "property", "prose", "protest", "public", "pull", "pump", "punishment", "purpose", "push", "quality", "question", "quick", "quiet", "quite", "rail", "rain", "range", "rate", "reaction", "reading", "ready", "reason", "receipt", "record", "regret", "regular", "relation", "religion", "representative", "request", "respect", "responsible", "rest", "reward", "rhythm", "rice", "right", "ring", "river", "road", "roll", "roof", "room", "root", "rough", "round", "rule", "safe", "sail", "salt", "same", "sand", "scale", "school", "science", "scissors", "screw", "seat", "second", "secret", "secretary", "seed", "seem", "selection", "self", "send", "sense", "separate", "serious", "servant", "shade", "shake", "shame", "sharp", "sheep", "shelf", "ship", "shirt", "shock", "shoe", "short", "shut", "side", "sign", "silk", "silver", "simple", "sister", "size", "skin", "skirt", "sleep", "slip", "slope", "slow", "small", "smash", "smell", "smile", "smoke", "smooth", "snake", "sneeze", "snow", "soap", "society", "sock", "soft", "solid", "some", "song", "sort", "sound", "soup", "south", "space", "spade", "special", "sponge", "spoon", "spring", "square", "stage", "stamp", "star", "start", "statement", "station", "steam", "steel", "stem", "step", "stick", "sticky", "stiff", "still", "stitch", "stocking", "stomach", "stone", "stop", "store", "story", "straight", "strange", "street", "stretch", "strong", "structure", "substance", "such", "sudden", "sugar", "suggestion", "summer", "support", "surprise", "sweet", "swim", "system", "table", "tail", "take", "talk", "tall", "taste", "teaching", "tendency", "test", "than", "that", "then", "theory", "there", "thick", "thin", "thing", "this", "thought", "thread", "throat", "through", "through", "thumb", "thunder", "ticket", "tight", "till", "time", "tired", "together", "tomorrow", "tongue", "tooth", "touch", "town", "trade", "train", "transport", "tray", "tree", "trick", "trouble", "trousers", "true", "turn", "twist", "umbrella", "under", "unit", "value", "verse", "very", "vessel", "view", "violent", "voice", "waiting", "walk", "wall", "warm", "wash", "waste", "watch", "water", "wave", "weather", "week", "weight", "well", "west", "wheel", "when", "where", "while", "whip", "whistle", "white", "wide", "will", "wind", "window", "wine", "wing", "winter", "wire", "wise", "with", "woman", "wood", "wool", "word", "work", "worm", "wound", "writing", "wrong", "year", "yellow", "yesterday", "young"]

print("H A N G M A N!!!")
var Menu1 = false
var fullGame = false
var exit = false

var strikes = 6
var tries = 0
var totalTries = 0
var selectWord: String
var word: [Character] = []
var answer: [Character] = []
var garbage: [Character] = []
var Menu2 = true
var game: Bool = true
var totalLetters = 0

print("Try your luck or nah?\n1) Play\n2) Nah")
repeat {
    if let response = readLine() {
        switch response.lowercased() {
        case "1", "play":
            print("You chose 1) Play")
            Menu1 = false
            fullGame = true
        case "2", "Nah":
            print("OK! Maybe next time.")
            Menu1 = false
            fullGame = false
            exit = true
        default:
            print("Invalid answer!")
            Menu1 = true
        }
    }
} while Menu1

let alphabet: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
var hangMan = """
|-------
|        |
|
|
|
|
|     _______
|____|_______|_______
"""
while fullGame {
    
    print("Hangman has begun!")
    print("Pasting letters together...")
    
    selectWord = allWords.randomElement()!
    for i in selectWord {
        word.append(i)
        totalLetters += 1
    }
    for _ in word {
        answer.append("_")
    }
    print("Here we go! Try to this one! It has \(totalLetters) letters!")
    for i in answer {
        print(i, terminator: " ")
    }
    
    print("")
    
    //print(word) if needed
    
    repeat {
        if let response = readLine() {
            if response.count != 1 {
                print("One character at a time.")
                continue
            }
            
            totalTries += 1
            let char = Character(response.lowercased())
            
            if !alphabet.contains(char){
                print("Only enter letters of the alphabets")
                continue
            }
            
            if word.contains(char) {
                if answer.contains(char) {
                    print("You have already chosen letter \(char). Pick again!")
                }
                for i in 0..<word.count {
                    for _ in word {
                        if word[i] == char {
                            answer[i] = word[i]
                            
                            if word == answer {
                                
                                print("You've done it! The word is \(selectWord)")
                                print("It took you total of \(totalTries) tries! Your a natural!")
                                game = false
                                
                                break
                                
                            }
                        }
                    }
                }
                print(hangMan)
                
                for i in answer {
                    print(i, terminator: " ")
                }
                print("")
                
            } else if garbage.contains(char) {
                print("You have already chosen letter \(char) before")
            } else {
                
                tries += 1
                switch tries {
                case 0:
                    hangMan = """
                    |--------=
                    |        |
                    |
                    |
                    |
                    |
                    |     _______
                    |____|_______|_______
                    """
                case 1:
                    hangMan = """
                    |-------=
                    |       |
                    |       O
                    |
                    |
                    |
                    |     _______
                    |____|_______|_______
                    """
                case 2:
                    hangMan = """
                    |-------=
                    |       |
                    |       O
                    |       |
                    |
                    |
                    |     _______
                    |____|_______|_______
                    """
                case 3:
                    hangMan = """
                    |-------=
                    |       |
                    |       O
                    |      /|
                    |
                    |
                    |     _______
                    |____|_______|_______
                    """
                case 4:
                    hangMan = """
                    |-------=
                    |       |
                    |       O
                    |      /|\\
                    |
                    |
                    |     _______
                    |____|_______|_______
                    """
                case 5:
                    hangMan = """
                    |-------=
                    |       |
                    |       O
                    |      /|\\
                    |       |
                    |      /
                    |     _______
                    |____|_______|_______
                    """
                case 6:
                    hangMan = """
                    |-------=
                    |       |
                    |       O
                    |      /|\\
                    |       |
                    |      / \\
                    |     _______
                    |____|_______|_______
                    """
                default:
                    print("Invalid value for hangman, should be done on 6.")
                }
                print("Sorry! There are no \(char)'s")
                print("Tossing \(char). Check the garbage if you need it!")
                
                garbage.append(char)
                let remaining = strikes - tries
                print("Garbage :")
                print(hangMan)
                
                for i in garbage {
                    print(i, terminator: " ")
                }
                print("")
                print("You have \(remaining) tries left")
                
                for i in answer {
                    print(i, terminator: " ")
                }
                print("")
                
                
                if tries == strikes {
                    print("Awwwww sorry! You lost! The word was \(selectWord)")
                    print("Took you total of \(totalTries) tries.")
                    game = false
                    break
                }
            }
            
        }
    } while game
    
    
    repeat {
        print("Play again?\n1) Yes\n2) No")
        if let response = readLine() {
            switch response.lowercased() {
            case "1", "yes":
                print("Ha ha! Restarting game")
                answer = []
                word = []
                totalLetters = 0
                tries = 0
                game = true
                Menu2 = false
                exit = false
            case "2", "no":
                print("No? See you next time")
                game = false
                Menu2 = false
                fullGame = false
                exit = true
            default:
                print("Invalid response!")
            }
        }
    } while Menu2
}

while exit {
    print("Now you make sure you come back. Don't be a stranger")
    exit = false
}





