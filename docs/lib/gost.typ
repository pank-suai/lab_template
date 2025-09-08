#import "titlepage.typ": *


#let init(body) = {
  titlepage(authors: ("В.Д. Панков",), city: "Санкт-Петербург", department: "Кафедра № ", documentName: "ОТЧЁТ ПО ЛАБОРАТОРНОЙ РАБОТЕ", education: "ГУАП", group: "М412", teachers: (), position: "")
  
  set text(
    font: "Times New Roman",
    size: 14pt,
    lang: "ru",
    region: "ru",
    hyphenate: true,
  )
  set heading(numbering: "1.1")

  set par(justify: true, leading: 1.2em)

  show table: set text(hyphenate: true)
  show table: set par(justify: false, leading: 0.3em, first-line-indent: 0em)

  set figure.caption(separator: [ --- ])

  show figure.where(kind: image): set figure(supplement: "Рисунок")
  show figure.where(kind: table): set figure(supplement: "Таблица")

  show figure.where(kind: table): set figure.caption(position: top)

  show figure.where(kind: table): it => {
    show figure.caption: set align(left)
    it
  }

  show figure: it =>{
    it
  }

  set list(marker: [---], body-indent: 1em, indent: 1.25cm)

  show list: set par(hanging-indent: -2.5em)

  // Ссылка на изображения (без рисунок, просто число)
  show ref: it =>{
    let el = it.element

    if el != none and el.func() == figure {
      numbering(el.numbering, el.counter.at(el.location()).at(0))
    } else if el != none and el.func() == math.equation {
      // Override equation references.
      link(
        el.location(),
        numbering(el.numbering, ..counter(math.equation).at(el.location())),
      )
    } else {
      it
    }
  }


  // titlepage
  

  set page(
    margin: (top: 20mm, bottom: 20mm, left: 30mm, right: 15mm),
  )
    
  // toc
 {
    if false {
      show outline: set block(below: 1.25cm / 2)
      show heading: it => {
        set text(size: 14pt)
        set align(center)
        upper(it)
      }
      outline(depth: 3, indent: 1.25cm)
      pagebreak()
    }
  }
  show heading: it => block(width: 100%)[
    #set text(14pt, weight: "bold", hyphenate: false)

    #if (it.numbering != none) {
      counter(heading).display()
    }
    #text(it.body)
  ]

  set par(first-line-indent: (amount: 1.25cm, all: true))
  show figure: set block(breakable: true)
  set math.equation(numbering: "(1)")
  set page(numbering: "1")
  

  show raw: set text(10pt, font: "JetBrains Mono")
  show raw: set par(justify: false, leading: 1em)

  body
}


#let ch(content) = {
  align(heading(upper(content), numbering: none), center)
}
