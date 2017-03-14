// Soccer League Corrinator in Swift

let player1: [String : Any] = [ "name": "Joe Smith", "height": 42, "experience": true, "guardians": "Jim and Jan Smith"]
let player2: [String : Any] = ["name": "Jill Tanner", "height": 36, "experience": true, "guardians": "Clara Tanner"]
let player3: [String : Any] = ["name": "Bill Bon", "height": 43, "experience": true, "guardians": "Sara and Jenny Bon"]
let player4: [String : Any] = [ "name": "Eva Gordon", "height": 45, "experience": false, "guardians": "Wendy and Mike Gordon"]
let player5: [String : Any] = [ "name": "Matt Gill", "height": 40, "experience": false, "guardians": "Charles and Sylvia Gill"]
let player6: [String : Any] = [ "name": "Kimmy Stein", "height": 41, "experience": false, "guardians": "Bill and Hilary Stein" ]
let player7: [String : Any] = [ "name": "Sammy Adams", "height": 45, "experience": false, "guardians": "Jeff Adams" ]
let player8: [String : Any] = [ "name": "Karl Saygan", "height": 42, "experience": true, "guardians": "Heather Bledsoe"]
let player9: [String : Any] = [ "name": "Suzane Greenberg", "height": 44, "experience": true, "guardians": "Henrietta Dumas"]
let player10: [String : Any] = [ "name": "Sal Dali", "height": 41, "experience": false, "guardians": "Gala Dali"]
let player11: [String : Any] = [ "name": "Joe Kavalier", "height": 39, "experience": false, "guardians": "Sam and Elaine Kavalier"]
let player12: [String : Any] = [ "name": "Ben Finkelstein", "height": 44, "experience": false, "guardians": "Aaron and Jill Finkelstein"]
let player13: [String : Any] = [ "name": "Diego Soto", "height": 41, "experience": true, "guardians": "Robin and Sarika Soto"]
let player14: [String : Any] = [ "name":  "Chloe Alaska", "height": 47, "experience": false, "guardians": "David and Jamie Alaska"]
let player15: [String : Any] = [ "name": "Arnold Willis", "height": 43, "experience": false, "guardians": "Claire Willis"]
let player16: [String : Any] = [ "name": "Phillip Helm", "height": 44, "experience": true, "guardians": "Thomas Helm and Eva Jones"]
let player17: [String : Any] = [ "name": "Les Clay", "height": 42, "experience": true, "guardians": "Wynonna Brown"]
let player18: [String : Any] = [ "name": "Herchel Krustofski", "height": 45, "experience": true, "guardians": "Hyman and Rachel Krustofski"]

let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

var experienced: [[String: Any]] = []
var notExperienced: [[String: Any]] = []

for player in players{
if(player["experience"] as! Bool == true) {
experienced.append(player)
  } else {
    notExperienced.append(player)
      }
   }
var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

for expPlayer in experienced {
    if (teamSharks.count == teamRaptors.count) {
        teamSharks.append(expPlayer)
    } else if (teamDragons.count == teamRaptors.count) {
        teamDragons.append(expPlayer)
    }else if (teamRaptors.count < teamSharks.count){
        teamRaptors.append(expPlayer)
    }
}

for notExpPlayer in notExperienced{
    if (teamSharks.count == teamRaptors.count) {
        teamSharks.append(notExpPlayer)
    } else if (teamDragons.count == teamRaptors.count) {
        teamDragons.append(notExpPlayer)
    }else if (teamRaptors.count < teamSharks.count){
        teamRaptors.append(notExpPlayer)
    }
}

func teamLetters(team: [[String: Any]], date: String, teamName: String) {
    var letters: Array! = []
    
    for player in team {
        let letter = "Dear \(player["guardians"] as! String). Your child \(player["name"] as! String) has been selected to play for the \(teamName). He/she will have a team pratice on the \(date)"
        letters.append(letter)
        
    }
    for letter in letters {
        print(letter)
        print("")
        
    }
}

print("Team Sharks")
print("")
teamLetters(team: teamSharks, date: "March 17, 3pm", teamName: "Team Sharks")
print("")
print("")

print("Team Dragons")
print("")
teamLetters(team: teamDragons, date: "March 17, 1pm", teamName: "Team Dragons")
print("")
print("")

print("Team Raptors")
print("")
teamLetters(team: teamRaptors, date: "March 18 1pm", teamName: "Team Raptors")
print("")
print("")



    











