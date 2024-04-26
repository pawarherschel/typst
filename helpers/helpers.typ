#import "@preview/fontawesome:0.1.0": *

#let color-darknight = rgb("131A28")
#let color-darkgray = rgb("414141")
#let color-gray = rgb("5d5d5d")
#let default-accent-color = rgb("333ECC")

/// Show a link with an icon, specifically for Github projects
/// *Example*
/// #example(`resume.github-link("DeveloperPaul123/awesome-resume")`)
/// - github_path (string): The path to the Github project (e.g. "DeveloperPaul123/awesome-resume")
/// -> none
/// taken from https://github.com/DeveloperPaul123/modern-cv/blob/main/lib.typ
#let github-link(github_path) = {
  set box(height: 11pt)
  
  align(right + horizon)[
    #fa-icon("github", fa-set: "Brands", fill: color-darkgray) #link("https://github.com/" + github_path, github_path)
  ]
}

#import "../template/template.typ": hBar

#let join-with-hBar = arr => {
  arr.join(
    eval(
      "sep",
      mode: "code",
      scope: (
        sep : hBar()
      )
    )
  )
}


#let join-as-bullet-list = arr => {
  if arr.len() == 0 {
    return list()
  }

  let list = arr.map(item => {
    return "- " + item
  }).join("\n")
  
  eval(
    list,
    mode: "markup",
  )
}

