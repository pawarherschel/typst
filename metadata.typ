/* Personal Information */

#let firstName = "Herschel"
#let lastName = "Pawar"
#let personalInfo = (
  github: "pawarherschel",
  phone: "+91 83107 83472",
  email: "pawarherschel@gmail.com",
  linkedin: "pawarherschel",
  //gitlab: "mintyfrankie",
  homepage: "sakurakat.systems",
  //orcid: "0000-0000-0000-0000",
  //researchgate: "John-Doe",
  // extraInfo: "asdf",
)

#let headerQuoteInternational = (
  "": [Enthusiastic learner, curious about everything. 
  
  Looking forward to work on projects that make a difference.],
)

/* Layout Setting */

// Optional: skyblue, red, nephritis, concrete, darknight
#let awesomeColor = "red"

// Leave blank if profil photo is not needed
// #let profilePhoto = "../src/avatar.png" 
#let profilePhoto = ""

// Change this variable to control output language & cited module
// INFO: value must matches folder suffix; i.e "zh" -> "./modules_zh"
#let varLanguage = "" 

// Decide if you want to put your company in bold or your position in bold
#let varEntrySocietyFirst = false 

// Decide if you want to display organisation logo or not
#let varDisplayLogo = true

// for cvFooter and letterFooter arrays, add your own languages while the keys must match the varLanguage variable
#let cvFooterInternational = (
  "": "Curriculum vitae",
  // "en": "Curriculum vitae",
  // "fr": "Résumé"
)

#let letterFooterInternational = (
  "": "Cover Letter",
  // "en": "Cover Letter",
  // "fr": "Lettre de motivation",
)
