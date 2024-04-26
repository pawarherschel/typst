#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = yaml("../SOT.yaml")
#let skills = ()
#if SOT.keys().contains("skills") {
  skills = SOT.skills
}

#if skills.len() != 0 {
  cvSection("Skills")

  for skill in skills {
  let type = skill.type
  let info = join-with-hBar(skill.info)
  
  cvSkill(
      type: type,
      info: info
    )
  }
}