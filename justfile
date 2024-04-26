watch-cv:
  typst watch ./src/cv.typ ./output/CV.pdf --font-path ./src/fonts/ --root "."

watch-letter:
  typst watch ./src/letter.typ ./output/Letter.pdf --font-path ./src/fonts/ --root "."

compile-cv:
  typst compile ./src/cv.typ ./output/CV.pdf --font-path ./src/fonts/ --root "."

compile-letter: 
  typst compile ./src/letter.typ ./output/Letter.pdf  --font-path ./src/fonts/ --root "."