#import "../template/template.typ": *
#import "../helpers/helpers.typ": *

#let SOT = toml("../SOT.toml")
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
    let url = certificate.url
    let location = certificate.location

    cvHonor(
      date: date,
      title: title,
      issuer: issuer,
      url: url,
      location: location,
    )
  }
}
