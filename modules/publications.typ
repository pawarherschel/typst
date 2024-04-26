#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = toml("../SOT.toml")
#let publications = ()
#if SOT.keys().contains("publications") {
  publications = SOT.publications
}

#if publications.len() != 0 {
  cvSection("Publications")

  for publication in publications {
    let title = publication.title
    let society = publication.society
    let date = publication.date
    let location = for key in publication.location.keys() {
      let v = publication.location.at(key)
      if key == "github" {
        github-link(v)
      }
    }
    let description = join-as-bullet-list(publication.description)
    
    cvEntry(
        title: title,
        society: society,
        date: date,
        location: location,
        description: description
      )
  }
}

#if SOT.keys().contains("bibliography") {
  let bib = SOT.bibliography
  let bibPath = bib.bibPath
  if bibPath.len() != 0 {
    bibPath = "../" + bibPath
  }
  let refStyle = bib.refStyle
  
  if bibPath.len() != 0 {
    cvPublication(
      bibPath: bibPath,
      refStyle: refStyle,
    )
  }
}