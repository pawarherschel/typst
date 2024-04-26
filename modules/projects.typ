#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = toml("../SOT.toml")
#let projects = ()
#if SOT.keys().contains("projects") {
  projects = SOT.projects
}

#if projects.len() != 0 {
  cvSection("Projects & Associations")

  for project in projects {
  let title = project.title
  let society = project.society
  let date = project.date
  let location = for key in project.location.keys() {
    let v = project.location.at(key)
    if key == "github" {
      github-link(v)
    }
  }
  let description = join-as-bullet-list(project.description)
  
  cvEntry(
      title: title,
      society: society,
      date: date,
      location: location,
      description: description
    )
  }
}