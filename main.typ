#import "template.typ": project

#show: project.with(
  title: "Your Project Title",
  author: "Your Name",
  supervisor: "Supervisor Name",
  report-type: "MSc Individual Project",
  degree: "MSc Computing",
  date: datetime(year: 2026, month: 6, day: 1),
  abstract: [
    Your abstract goes here. Briefly describe what the project is about,
    the methods used, and the key findings.
  ],
  acknowledgements: [
    Thanks to my supervisor, colleagues, and everyone who supported this work.
  ],

  // ── Optional overrides (all have sensible defaults) ───────────────────────
  // logo: "figures/ICL_Logo_Blue_2024.svg",  // swap to white/black variant
  // logo-width: 4cm,
  // show-acknowledgements: true,             // set false to skip that page
  // toc-depth: 3,
  // department: "Department of Computing",
  // institution: "Imperial College of Science, Technology and Medicine",

  // ── Theme customisation example ───────────────────────────────────────────
  // Only override what you need; everything else keeps its default.
  theme: (
    // Use Imperial Navy instead of the default Imperial Blue
    primary: rgb("#002147"),
    // Slightly larger body text
    body-size: 12.5pt,
    // Looser line spacing
    line-spacing: 0.75em,
  ),
)

= Introduction

This is the introduction chapter. Use `=` for chapters (level 1),
`==` for sections, `===` for subsections.

#figure(
  image("figures/ICL_Logo_Blue_2024.svg", width: 40%),
  caption: [Imperial College Logo.],
) <fig:logo>

@fig:logo shows the Imperial College logo.

@example2024 showed that example-driven research can be highly effective.
Further reading can be found in @textbook2023, which provides a comprehensive
overview of the field.

= Background

Background and related work goes here. As described in @textbook2023, the
foundations of computing have evolved significantly over the past decades.

= Contribution

Your main contribution goes here.

= Experimental Results

Results and evaluation go here.

= Conclusion

Conclusion goes here.

#bibliography("refs.bib", style: "apa")
