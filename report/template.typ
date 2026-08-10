// Shared formatting for the COS 734 group report.
// Rules from the docx template (see PLANNING.md "Report formatting rules"):
// - Times New Roman throughout; body 12pt, headers 12-14pt max.
// - Each top-level (level-1) section starts on a new page.
// - Section numbers are typed manually as "1.0", "1.1", ... to match the
//   docx template's convention, so heading numbering is left off.

#let report(
  title: "",
  app-name: "",
  group-name: "",
  members: (),
  team-rep: "",
  body,
) = {
  set document(title: title)
  set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm), numbering: "1")
  set text(font: "Times New Roman", size: 12pt, lang: "en")
  set par(justify: true, leading: 0.65em)

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    set text(size: 14pt, weight: "bold")
    block(above: 0em, below: 1em, it.body)
  }
  show heading.where(level: 2): it => {
    set text(size: 12pt, weight: "bold")
    block(above: 1em, below: 0.6em, it.body)
  }
  show heading.where(level: 3): it => {
    set text(size: 12pt, weight: "bold", style: "italic")
    block(above: 0.8em, below: 0.4em, it.body)
  }

  // Title page
  align(center)[
    #v(3.5cm)
    #text(size: 18pt, weight: "bold")[#title]
    #v(1cm)
    #text(size: 16pt, weight: "bold")[#app-name]
    #v(2.5cm)
    #text(size: 13pt)[#group-name]
    #v(0.6cm)
    #for m in members [
      #m \
    ]
    #v(0.6cm)
    Team representative: #team-rep
  ]
  pagebreak()

  body
}
