#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = toml("../SOT.toml")
#let education = ()
#if SOT.keys().contains("education") {
  education = SOT.education
}

#if education.len() != 0 {
  cvSection("Education")

  set block(spacing: 0em)

  for entry in education {
    let title = entry.title
    let society = entry.society
    let date = entry.date
    let location = entry.location
    let logo = ""
    if entry.keys().contains("logo") {
      logo = "../" + entry.logo
    }
    let description = join-as-bullet-list(entry.description)


    cvEntry(
      title: title,
      society: society,
      date: date,
      location: location,
      logo: logo,
      description: description,
    )
  }
}
