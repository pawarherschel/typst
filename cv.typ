#import "awesomeCV/template.typ": *
#show: layout

#cvHeader(align: left)
  #autoImport("education")
  #autoImport("professional")
  #autoImport("projects")
  #autoImport("certificates")
  #autoImport("publications")
  #autoImport("skills")
#cvFooter()
