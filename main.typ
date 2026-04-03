#import "template.typ": project

#show: project.with(
  title: "Your Project Title",
  author: "Your Name",
  supervisor: "Supervisor Name",
  report-type: "MEng Individual Project",
  degree: "Master of Engineering (MEng)",
  date: datetime(year: 2026, month: 6, day: 1),
  abstract: [
    Your abstract goes here. Briefly describe what the project is about,
    the methods used, and the key findings.
  ],
  acknowledgements: [
    Thanks to my supervisor, colleagues, and everyone who supported this work.
  ],
)

= Introduction

This is the introduction chapter. Use `=` for chapters (level 1),
`==` for sections, `===` for subsections.

#figure(
  image("figures/ICL_Logo_Blue.png", width: 40%),
  caption: [Imperial College Logo.],
) <fig:logo>

@fig:logo shows the Imperial College logo.

= Background

Background and related work goes here.

= Contribution

Your main contribution goes here.

= Experimental Results

Results and evaluation go here.

= Conclusion

Conclusion goes here.

// Bibliography — create a refs.bib file and uncomment:
// #bibliography("refs.bib", style: "apa")
