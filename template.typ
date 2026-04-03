// Imperial College London - Individual Project Template (Typst)
// Ported from the LaTeX template by Marc Deisenroth (2015)

#let imperial-blue = rgb("#003E74")

#let project(
  title: "Project Title",
  author: "Your Name",
  supervisor: "Supervisor Name",
  report-type: "MEng Individual Project",
  degree: "Master of Engineering",
  date: datetime.today(),
  abstract: [],
  acknowledgements: none,
  body,
) = {
  // Document settings
  set document(title: title, author: author)
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 3cm, right: 2.5cm),
    numbering: none,
  )
  set text(font: "Imperial Sans Text", size: 12pt)
  set par(justify: true, leading: 0.65em)

  // Headings use Imperial Sans Display in Imperial Blue
  show heading: it => {
    set text(font: "Imperial Sans Display", fill: imperial-blue)
    it
  }
  set heading(numbering: "1.1")

  // ─── Title Page ───────────────────────────────────────────────
  page(numbering: none)[
    #align(center)[
      #image("figures/ICL_Logo_Blue.png", width: 4cm)
      #v(1cm)

      #text(
        font: "Imperial Sans Display",
        size: 18pt,
        weight: "bold",
        fill: imperial-blue,
        upper(report-type),
      )
      #v(1cm)
      #text(font: "Imperial Sans Display", size: 14pt, fill: imperial-blue, "Department of Computing")
      #v(0.4cm)
      #text(font: "Imperial Sans Text", size: 11pt, "Imperial College of Science, Technology and Medicine")
      #v(1cm)

      #line(length: 100%, stroke: 0.5pt + imperial-blue)
      #v(0.5cm)
      #text(font: "Imperial Sans Display", size: 22pt, weight: "bold", fill: imperial-blue, title)
      #v(0.5cm)
      #line(length: 100%, stroke: 0.5pt + imperial-blue)
      #v(1.5cm)

      #grid(
        columns: (1fr, 1fr),
        align(left)[
          #text(style: "italic")[Author:] \
          #author
        ],
        align(right)[
          #text(style: "italic")[Supervisor:] \
          #supervisor
        ],
      )

      #v(4cm)
      #text(size: 12pt, date.display("[day] [month repr:long] [year]"))
      #v(1cm)
      #text(size: 11pt)[
        Submitted in partial fulfillment of the requirements for the \
        #degree of Imperial College London
      ]
    ]
  ]

  // ─── Roman numerals for front matter ─────────────────────────
  set page(numbering: "i", number-align: center)
  counter(page).update(1)

  // Abstract
  if abstract != [] {
    page[
      #heading(outlined: false, numbering: none, "Abstract")
      #abstract
    ]
  }

  // Acknowledgements
  if acknowledgements != none {
    page[
      #heading(outlined: false, numbering: none, "Acknowledgements")
      #acknowledgements
    ]
  }

  // Table of Contents
  page[
    #outline(depth: 3, indent: 1em)
  ]

  // ─── Arabic numerals for main body ───────────────────────────
  set page(numbering: "1", number-align: center)
  counter(page).update(1)

  // Twoside header: chapter name on outer edge
  set page(header: context {
    let page-num = counter(page).get().first()
    let is-odd = calc.odd(page-num)
    let headings = query(selector(heading.where(level: 1)).before(here()))
    if headings.len() > 0 {
      let h = headings.last()
      let chapter-text = text(
        font: "Imperial Sans Text",
        size: 10pt,
        style: "italic",
        h.body,
      )
      if is-odd {
        align(right, chapter-text)
      } else {
        align(left, chapter-text)
      }
      line(length: 100%, stroke: 0.3pt + imperial-blue)
    }
  })

  body
}
