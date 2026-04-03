// Imperial College London - Individual Project Template (Typst)
// Ported from the LaTeX template by Marc Deisenroth (2015)

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
  set text(font: "New Computer Modern", size: 12pt)
  set par(justify: true, leading: 0.65em)
  set heading(numbering: "1.1")

  // ─── Title Page ───────────────────────────────────────────────
  page(numbering: none)[
    #align(center)[
      #image("figures/imperial.pdf", width: 4cm)
      #v(0.5cm)

      #text(size: 18pt, weight: "bold", smallcaps(report-type))
      #v(1.5cm)
      #text(size: 14pt, smallcaps("Department of Computing"))
      #v(0.5cm)
      #text(size: 12pt, smallcaps("Imperial College of Science, Technology and Medicine"))
      #v(0.5cm)

      #line(length: 100%, stroke: 0.5pt)
      #v(0.4cm)
      #text(size: 22pt, weight: "bold", title)
      #v(0.4cm)
      #line(length: 100%, stroke: 0.5pt)
      #v(1.5cm)

      #grid(
        columns: (1fr, 1fr),
        align(left)[
          _Author:_ \
          #author
        ],
        align(right)[
          _Supervisor:_ \
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
    #outline(depth: 3, indent: true)
  ]

  // ─── Arabic numerals for main body ───────────────────────────
  set page(numbering: "1", number-align: center)
  counter(page).update(1)

  // Header
  set page(header: context {
    let page-num = counter(page).get().first()
    if page-num > 1 {
      let headings = query(selector(heading.where(level: 1)).before(here()))
      if headings.len() > 0 {
        let h = headings.last()
        align(right, text(size: 10pt, style: "italic", h.body))
        line(length: 100%, stroke: 0.3pt)
      }
    }
  })

  body
}
