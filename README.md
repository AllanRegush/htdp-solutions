# How to Design Programs – Solutions & Learning Journal
[![Test](https://github.com/AllanRegush/htdp-solutions/actions/workflows/cl.yml/badge.svg)](https://github.com/AllanRegush/htdp-solutions/actions/workflows/cl.yml)

Systematic solutions to every exercise in the 2nd edition of *[How to Design Programs](https://htdp.org)* (HtDP) using Racket and the strict application of the **design recipe**.

This repository serves two purposes:
1. A complete, well-tested reference implementation of the book.
2. A public demonstration of my ability to design correct, readable, and documented functional programs from first principles.

## Why this project exists

- To deeply internalize the HtDP design methodology (data-driven design, contracts, purpose statements, tests first, stepwise refinement).

## Current Progress

| Part | Topic                     | Exercises | Status       |
|------|---------------------------|-----------|--------------|
| 1    | Fixed-Size Data           | 1–115        | In progress|
| Intermezzo 1    | Beginning Student Language            |           |  Not started  |
| 2    | Arbitrarily Large Data     |           |  Not started  |
| Intermezzo 2    | Quote, Unquote |           | Not started |
| 3    | Abstraction    |           | Not started |
| Intermezzo 3    | Scope and Abstraction      |           | Not started |
| 4    | Intertwined Data             |           | Not started |
| Intermezzo 4    | Nature of numbers |           | Not started |
| 5   | Generative Recursion  |           | Not started |
| Intermezzo 5   | The Cost of Computation  |           | Not started |
| 6  | Accumulators  |           | Not started |

Detailed checklist → [docs/progress.md](docs/progress.md)

## How to run the code

```bash
# 1. Install Racket (preferably the latest stable version)
https://download.racket-lang.org/

# 2. Clone and enter the repo
git clone https://github.com/your-username/htdp-solutions.git
cd htdp-solutions

# 3. Run any file directly
racket 1-fixed-size-data/ex1-distance-formula.rkt

# 4. Run tests
raco test .
```
