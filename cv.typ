#import "awesomeCV/template.typ": *
#show: layout

#cvHeader(hasPhoto: false, align: left)
  #autoImport("education")
  #autoImport("professional")
  #autoImport("projects")
  #autoImport("certificates")
  #autoImport("publications")
  #autoImport("skills")
#cvFooter()
