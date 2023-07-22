#import "font.typ": *

// Abbreviations
#show heading : it => {
  set align(center)
  set text(font: arial, size: font_size.large)
  it
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

#heading(level: 1, outlined: false)[ABBREVIATIONS]
#v(2em)

#show outline: it => {
  set text(font: arial, size: font_size.footnotesize)
  set align(center)
  set par(leading: 1em )
  it
}

#figure(
  table(
     columns: (auto, auto),
     [Chữ viết tắt], [Tiếng Anh], 
     [DNA], [Deoxy Nucleotide Acid], 
     [PCR], [Polymerase Chain Reaction],
     [AI], [Artificial Intelligence], 
     [SNP], [Single nucleotide polymorphism],
     [ML], [Machine Learning]
  ),
  //caption: [ABBREVIATIONS],
)

#pagebreak()

#show heading: it => {
  set align(center)
  set text(font: arial, size: font_size.large)
  it
  par(leading: 1.5em)[#text(size:0.0em)[#h(0.0em)]]
}

#set page(footer: [
    #set align(center)
    #set text(size: 10pt, baseline: -3pt)
    #counter(page).display(
      "I",
    )
] )

// List of Figures
#heading(level: 1, outlined: true)[List of Figures]
#v(2em)
/*
#show outline: it => {
  set heading(numbering: "1.1")
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  target: figure.where(kind: image),
  indent : true,
)
*/
#show outline: it => {
  set heading(numbering: "1.1.1")
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  depth: 3,
  title: none,
  target: figure.where(kind: image),
  indent: true,
)

#pagebreak()

// List of Tables
#heading(level: 1, outlined: true)[List of Tables]
#v(2em)

#show outline: it => {
  set heading(numbering: "1.1.1")
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  depth: 3,
  title: none,
  target: figure.where(kind: table),
  indent: true,
)
#pagebreak()

// TODO: List of Formulas
#heading(level: 1, outlined: false)[List of Equations]
#v(2em)

#show outline: it => {
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  depth: 3,
  title: none,
  //target: figure.where(kind: equation),
  target: math.equation,
  indent: true,
)
#pagebreak()


// Table of Contents
#heading(level: 1, outlined: false)[Table of Contents]
#v(2em)
#{
  set align(left)
  set text(font: arial, size: font_size.footnotesize)
  set par(first-line-indent: 0pt)

  [ABSTRACT ] + [.] * 133 + [ I]
  set par(leading: 1em)
  [ABBREVIATIONS ] + [.] * 122 + [ II]
  set par(leading: 1em)
  [LIST OF FIGURES ] + [.] * 121 + [ III]
  set par(leading: 1em)
  [LIST OF TABLES ] + [.] * 122 + [ IV]
  set par(leading: 1em)
  [LIST OF FORMULAS ] + [.] * 117 + [ V]
  set par(leading: 1em)
  [LIST OF EQUATIONS ] + [.] * 114 + [ VI]
  set par(leading: 1em)
  [TABLE OF CONTENTS ] + [.] * 110 + [ VII]
}
#show outline: it => {
  set text(font: arial, size: font_size.footnotesize)
  set par(leading: 1em )
  it
}
#outline(
  title: none,
  indent: true,
)



