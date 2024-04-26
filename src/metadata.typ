/* Personal Information */

#let SOT = yaml("../SOT.yaml")
#let metadata = SOT.metadata

#let firstName = metadata.firstName
#let lastName = metadata.lastName
#let personalInfoEntries = metadata.personalInfo

#let personalInfo = (thing: "meow")
#for key in metadata.personalInfo.keys() {
  key
  if key == "github" {
    personalInfo.insert("github", metadata.personalInfo.github)
  } else if key == "phone" {
    personalInfo.insert("phone", metadata.personalInfo.phone)
  } else if key == "email" {
    personalInfo.insert("email", metadata.personalInfo.email)
  } else if key == "linkedin" {
    personalInfo.insert("linkedin", metadata.personalInfo.linkedin)
  } else if key == "gitlab" {
    personalInfo.insert("gitlab", metadata.personalInfo.gitlab)
  } else if key == "homepage" {
    personalInfo.insert("homepage", metadata.personalInfo.homepage)
  } else if key == "orcid" {
    personalInfo.insert("orcid", metadata.personalInfo.orcid)
  } else if key == "researchgate" {
    personalInfo.insert("researchgate", metadata.personalInfo.researchgate)
  } else if key == "extraInfo" {
    personalInfo.insert("extraInfo", metadata.personalInfo.extraInfo)
  }
}
#personalInfo.remove("thing")

// #let personalInfo = (
//   github: personalInfo.github,
//   phone: personalInfo.phone,
//   email: personalInfo.email,
//   linkedin: personalInfo.linkedin,
//   // gitlab: "mintyfrankie",
//   homepage: personalInfo.homepage,
//   orcid: personalInfo.orcid,
//   // researchgate: "John-Doe",
//   // extraInfo: "asdf",
// )

#let headerQuoteInternational = (
  "": metadata.headerQuote.join("\n"),
)

/* Layout Setting */

// Optional: skyblue, red, nephritis, concrete, darknight
#let awesomeColor = metadata.awesomeColor

// Leave blank if profil photo is not needed
// #let profilePhoto = "../src/avatar.png" 
#let profilePhoto = metadata.profilePhoto

// Change this variable to control output language & cited module
// INFO: value must matches folder suffix; i.e "zh" -> "./modules_zh"
#let varLanguage = "" 

// Decide if you want to put your company in bold or your position in bold
#let varEntrySocietyFirst = metadata.varEntrySocietyFirst

// Decide if you want to display organisation logo or not
#let varDisplayLogo = metadata.varDisplayLogo

// for cvFooter and letterFooter arrays, add your own languages while the keys must match the varLanguage variable
#let cvFooterInternational = (
  "": metadata.cvFooter,
  // "en": "Curriculum vitae",
  // "fr": "Résumé"
)

#let letterFooterInternational = (
  "": metadata.letterFooter,
  // "en": "Cover Letter",
  // "fr": "Lettre de motivation",
)
