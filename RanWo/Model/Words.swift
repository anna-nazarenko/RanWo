//
//  Words.swift
//  RanWo
//
//  Created by Anna Nazarenko on 17.09.2021.
//

import Foundation

var oldWords : [String : [String]] = [
  "A": ["abandon", "absence", "absolutely", "abuse", "accomplish", "acknowledge" , "actually", "additional", "adjustment", "affair" , "alliance", "alternative", "anniversary", "anticipate" , "anymore", "appearance", "approximately", "arrival" , "assumption", "atmosphere", "attitude", "attribute" , "awareness" ],
  "B": ["background", "badly", "balance", "barrier", "barrel", "basically" , "beautiful", "behavior", "bench", "besides" , "beyond", "biological", "blanket", "boundary" , "breathe", "brilliant", "buck", "bullet" , "bunch", "burden", "bury", "butter" , "buyer" ],
  "C": ["cabinet", "calculate", "capability", "captain", "career", "carefully" , "celebration", "ceremony", "championship", "characteristic" , "charity", "childhood", "circumstance", "civilian" , "closely", "comfortable", "communication", "competitor" , "completely", "component", "concentration", "conclusion" , "congressional", "construction" ],
  "D": ["dangerous", "daughter", "decision", "declare", "decrease", "defendant" , "defensive", "definitely", "delivery", "democracy" , "demonstration", "development", "differently", "difficulty" , "discrimination", "distinguish", "distribution", "domestic" , "downtown", "dramatically", "drawing", "dream" , "driver", "during" ],
  "E": ["eager", "easily", "eastern", "educational", "efficiency", "electricity" , "eliminate", "elsewhere", "embrace", "emergency" , "emission", "emphasize", "enforcement", "enhance" , "entertainment", "environmental", "establishment", "exhibition" , "expectation", "experiment", "explanation", "explosion" , "extraordinary", "extremely" ],
  "F": ["facility", "failure", "fiction", "fighting", "following", "fortune" , "foundation", "fourth", "framework", "freedom" , "freeze", "frequently", "fresh", "friendship" , "fruit", "frustration", "fuel", "fundamental" , "funding", "funeral", "funny", "furniture" , "furthermore", "future" ],
  "G": ["galaxy", "gallery", "gang", "garlic", "gather", "generally" , "generation", "gentleman", "gesture", "giant" , "glance", "government", "governor", "gradually" , "grandmother", "grant", "greatest", "grocery" , "growing", "guarantee", "guard", "guess" , "guideline", "guilty" ],
  "H": ["habitat", "handful", "headline", "headquarters", "healthy", "hearing" , "heavily", "helicopter", "helpful", "heritage" , "herself", "highlight", "highway", "himself" , "historical", "homeless", "honest", "honey" , "household", "humor", "hundred", "hundred" , "husband", "hypothesis" ],
  "I": ["identification", "illustrate", "imagination", "immediately", "immigration", "impact" , "implication", "importance", "impression", "improvement" , "incentive", "incorporate", "increasingly", "independence" , "indication", "inflation", "influence", "initiative" , "inquiry", "insight", "inspire", "institutional" , "intelligence", "interpretation" ],
  "J": ["jacket", "jail", "jet", "joint", "journalist", "journey" , "judgment", "juice", "jump", "junior" , "jury", "justice", "justify", "jokesome" , "jabberer", "jackboot" , "jacuzzis", "jaderies", "jadishly", "jaggedly" , "jailbait", "jalouses" ],
  "K": ["kind", "king", "kitchen", "knife", "knowledge", "kababbed" , "kangaroo", "karaoke", "kilometre", "ketchup" , "kickback", "kilobyte", "kipper", "kneecap" , "knickers", "knitwear", "knock", "knockout" , "know-how", "knowingly", "knowledgeable", "knuckle down" , "koala", "kudos" ],
  "L": ["laboratory", "labor", "landscape", "largely", "launch", "lawsuit" , "leadership", "learning", "legacy", "legislation" , "legitimate", "library", "lifetime", "limitation" , "literally", "loan", "locate", "long-term" , "linguistics", "librarian", "leverage", "liaison" , "letdown", "lubricate" ],
  "M": ["maintenance", "majority", "manufacturing", "marriage", "massive", "meanwhile" , "measurement", "medication", "membership", "mention" , "merely", "minority", "missile", "moderate" , "moreover", "motivation", "multiple", "mystery" , "meltdown", "marvellous", "masculine", "masterpiece" , "matchbox", "mathematician" ],
  "N": ["narrative", "naturally", "nearby", "necessary", "negotiation", "neighborhood" , "nevertheless", "nonetheless", "northern", "numerous" , "narrative", "nameless", "namesake", "nape" , "napkin", "necessitate", "naughty", "nationwide" , "needless", "negligence", "neutrality", "neutron" , "nomad", "noble" ],
  "O": ["obligation", "observation", "obviously", "occasionally", "occupation", "offensive" , "ongoing", "operation", "ordinary", "otherwise" , "ourselves", "overcome", "overlook", "owner" , "occasional", "odious", "offender", "opportunist" , "oppression", "opulent", "oratory", "orchard" , "orchestrate", "ordinarily" ],
  "P": ["pace", "participation", "particularly", "partnership", "passenger", "penalty" , "perceive", "percentage", "perception", "perfectly" , "perspective", "persuade", "philosophy", "pleasure" , "politically", "portrait", "possibility", "potentially" , "precisely", "predict", "preparation", "prescription" , "priority", "pursue" ],
  "Q": ["qualify", "quarter", "quarterback", "quietly", "quote", "qualitative" , "questionable", "questionnaire", "quagmire", "quake" , "quibble", "quicken", "quieten", "quip" , "quirk", "quiver", "quizzical", "quotation" ],
  "R": ["racial", "radical", "rail", "rapidly", "rarely", "realize" , "reasonable", "recall", "recommendation", "recovery" , "reduction", "reflection", "refugee", "regardless" , "regularly", "reinforce", "relationship", "relatively" , "remarkable", "representation", "resemble", "retirement" , "revenue", "rural" ],
  "S": ["sacred", "satellite", "satisfaction", "scenario", "scholarship", "scientific" , "security", "strengthen", "substantial", "sequence" , "shelf", "shelter", "shrug", "significance" , "silence", "similarly", "slightly", "slip" , "soccer", "somehow", "somewhat", "somewhere" , "sophisticated", "specifically" ],
  "T": ["tablespoon", "tape", "taxpayer", "teaspoon", "temporary", "territory" , "themselves", "threaten", "throughout", "tissue" , "tomorrow", "transformation", "tremendous", "tribe" , "thereabouts", "transfixed", "trashy", "translucent" , "travesty", "treadmill", "toothbrush", "topping" , "tongue", "topmost" ],
  "U": ["ultimately", "unable", "undergo", "understanding", "unfortunately", "unique" , "university", "universe", "unknown", "unless" , "urban", "urge", "unprofessional", "unpredictable" , "unrestrained", "upstage", "uptight", "unbeatable" , "useless", "utopian", "utterance", "utterly" , "unorthodox", "unjustified" ],
  "V": ["vacation", "valuable", "variation", "various", "vehicle", "versus" , "virtually", "vision", "volunteer", "vulnerable" , "vaccinate", "valuable", "variation", "varnish" , "vegetation", "vehement", "veiled", "velocity" , "velvet", "venerable", "vengeful", "vexed" , "videotape", "vicinity" ],
  "W": ["wage", "wander", "wealthy", "wedding", "weekly", "welfare" , "whatever", "wheel", "whereas", "whisper" , "whose", "widespread", "wife", "willing" , "winner", "wisdom", "withdraw", "witness" , "wonderful", "workshop", "worried", "wound" , "wrong", "wacky" ],
  "X": ["xenophobia", "xylophone", "X-ray", "xerox", "xylophone"],
  "Y": ["yard", "yell", "yesterday", "yield", "yourself", "youth" , "yardstick", "yearbook", "yearbook", "youngster" , "youthful", "yacht", "yank", "yummy" , "yuck", "yuppie", "yearly", "yob" ],
  "Z": ["zany", "zap", "zeal", "zealous", "zebra crossing", "zenith" , "zest", "zillion", "zoological", "zipper" , "zucchini"],
]

func fillBD() {
  //Write default words to Firebase
}
