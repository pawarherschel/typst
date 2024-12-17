#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = toml("../SOT.toml")
#let professional = ()
#if SOT.keys().contains("professional") {
  professional = SOT.professional
}

#if professional.len() != 0 {
  cvSection("Professional Experience")

  for entry in professional {
    let title = entry.title
    let society = entry.society
    let logo = ""
    if entry.keys().contains("logo") {
      logo = entry.logo
    }
    let date = entry.date
    let location = entry.location
    let description = join-as-bullet-list(entry.description)

    cvEntry(
      title: title,
      society: society,
      logo: logo,
      date: date,
      location: location,
      description: description,
    )
  }
}
