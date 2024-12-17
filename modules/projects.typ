#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = toml("../SOT.toml")
#let projects = ()
#let max-show = 0
#if SOT.keys().contains("projects") {
  projects = SOT.projects
}
#if SOT.metadata.keys().contains("projects_show") {
  max-show = SOT.metadata.projects_show
}

#if projects.len() != 0 {
  cvSection("Projects & Associations")

  for project in projects {
    let visible = project.visible
    if not visible {
      continue
    }
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
    let tags = ()
    if project.keys().contains("tags") {
      tags = project.tags
    }

    cvEntry(
      title: title,
      society: society,
      date: date,
      location: location,
      description: description,
      tags: tags,
    )
  }
}
