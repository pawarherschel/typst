#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = yaml("../SOT.yaml")
#let certificates = ()
#if SOT.keys().contains("certificates") {
  certificates = SOT.certificates
}

#if certificates.len() != 0 {
  cvSection("Certificates")

  for certificate in certificates {
    let date = certificate.date
    let title = certificate.title
    let issuer = certificate.issuer

    cvHonor(
      date: date,
      title: title,
      issuer: issuer,
    )
  }
}
