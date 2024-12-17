#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = toml("../SOT.toml")
#let skills = ()
#if SOT.keys().contains("skills") {
  skills = SOT.skills
}

#if skills.len() != 0 {
  cvSection("Skills")

  for skill in skills {
    let visible = skill.visible
    if not visible {
      continue
    }
    let type = skill.type
    let info = join-with-hBar(skill.info)

    cvSkill(
      type: type,
      info: info,
    )
  }
}
