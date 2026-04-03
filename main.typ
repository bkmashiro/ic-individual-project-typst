#import "template.typ": project, back-matter
#import "utils.typ": *

#show: project.with(
  title: "Your Project Title",
  author: "Your Name",
  supervisor: "Supervisor Name",
  report-type: "MSc Individual Project",
  degree: "MSc Computing",
  date: datetime.today(),
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
  // header-side: "twoside",                   // "twoside" | "left" | "right"
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

This is the introduction chapter #badge("Draft") — an overview of the project motivation,
goals, and structure. Use `=` for chapters (level 1), `==` for sections,
`===` for subsections.

#figure(
  image("figures/ICL_Logo_Blue_2024.svg", width: 40%),
  caption: [Imperial College Logo.],
) <fig:logo>

@fig:logo shows the Imperial College logo.

@example2024 showed that example-driven research can be highly effective.
Further reading can be found in @textbook2023, which provides a comprehensive
overview of the field.

#note[
  This template uses Imperial brand colours throughout. See `template.typ`
  for the full colour palette and customisation options.
]

#warning[
  Do not share draft versions of this report outside your supervision group
  before the submission deadline.
]

#tip[
  Use `#pagebreak()` sparingly — the template inserts automatic page breaks
  before each new chapter heading.
]

#todo("TODO: Add more context and expand the motivation section")

= Background

Background and related work goes here. As described in @textbook2023, the
foundations of computing have evolved significantly over the past decades.

#definition(term: "Neural Network")[
  A neural network is a computational model loosely inspired by the structure
  of biological neural networks in animal brains. It consists of layers of
  interconnected nodes (neurons) that transform input data through learned
  weighted connections.
]

Deep learning has driven much of the recent progress in computer vision.
In particular, #abbr("CNN", "Convolutional Neural Network") architectures
have achieved state-of-the-art results on image classification benchmarks.
Modern variants of the #abbr("CNN", "Convolutional Neural Network") continue
to be refined, incorporating attention mechanisms and skip connections.

Another widely used technique is the #abbr("MLP", "Multi-Layer Perceptron"),
which forms the backbone of many feed-forward networks.

#summary[
  This chapter introduced the key background concepts, including neural
  networks, CNNs, and MLPs. The following chapters build on these foundations
  to present the project's contribution.
]

= Contribution

Your main contribution goes here.

The core of our model is a linear transformation described by @eq:linear,
which maps input features to output predictions.

#eq($bold(y) = bold(W) bold(x) + bold(b)$, label: <eq:linear>)

@eq:linear shows the affine mapping where $bold(W)$ is the weight matrix,
$bold(x)$ the input vector, and $bold(b)$ the bias term.

== Experimental Setup

The following table summarises the hyperparameter configurations evaluated
in our experiments.

#ic-table(
  headers: ("Hyperparameter", "Values Tried", "Best Value"),
  rows: (
    ("Learning rate", "1e-2, 1e-3, 1e-4", "1e-3"),
    ("Batch size", "32, 64, 128", "64"),
    ("Hidden units", "128, 256, 512", "256"),
    ("Dropout rate", "0.1, 0.3, 0.5", "0.3"),
    ("Epochs", "50, 100, 200", "100"),
  ),
)

== Implementation

The model was implemented in Python using PyTorch. The core forward pass is
shown below.

#code-block(lang: "python", filename: "model.py")[
```python
import torch
import torch.nn as nn

class LinearModel(nn.Module):
    def __init__(self, in_features: int, out_features: int):
        super().__init__()
        self.layer = nn.Linear(in_features, out_features)

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        return self.layer(x)  # y = Wx + b
```
]

= Experimental Results

Results and evaluation go here.

#ic-figure(
  rect(width: 8cm, height: 5cm, fill: rgb("#D4EFFC")),
  caption: "Placeholder result figure",
  label: <fig:results>,
)

@fig:results shows the placeholder for the main result visualisation, to be
replaced with actual experimental output.

== Quantitative Results

The model achieved competitive performance across all evaluation metrics.
Full ablation results are reported in the supplementary material.

= Conclusion

Conclusion goes here.

#back-matter()

#abbr-list()

#bibliography("references.bib", style: "elsevier-vancouver")
