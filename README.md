# NLP-ENGINE Analyzers

This repository contains the text analyzers that are bundled with the [NLP-ENGINE](https://github.com/VisualText/nlp-engine) and shipped alongside the [VisualText](https://github.com/VisualText/vscode-nlp) VSCode extension. Each analyzer is a self-contained NLP++ project — a sequence of passes, dictionaries, and knowledge base files — that demonstrates a different aspect of writing analyzers in NLP++.

## Repository Layout

The repository is a small wrapper around several analyzer projects. Two analyzers live directly in this repo, and three more are pulled in as git submodules:

| Path | Type | Purpose |
| --- | --- | --- |
| [corporate/](corporate/) | local | Showcase analyzer that extracts companies, money, and events from text |
| [files/](files/) | local | Example of processing a directory of files with a persistent knowledge base |
| [parse-en-us/](parse-en-us/) | submodule | Full syntactic parser for US English |
| [nlp-tutorials/](nlp-tutorials/) | submodule | Companion analyzers for the NLP++ video tutorial series |
| [nlpfix-analyzers/](nlpfix-analyzers/) | submodule | Analyzers featured on the [NLPFix](http://nlpfix.com) demo page |

### Cloning

Because three of the analyzers are submodules, clone with `--recurse-submodules` (or run `git submodule update --init --recursive` after cloning):

```sh
git clone --recurse-submodules https://github.com/VisualText/analyzers.git
```

## Analyzers

### Corporate

[corporate/](corporate/) is a showcase analyzer that highlights the power of NLP++ and its knowledge base. It walks through a typical extraction pipeline — tokenization, sentence and paragraph segmentation, vocabulary lookup, phrase recognition, money and company detection, conjunction handling, anaphora (pronoun) resolution, and event extraction — and outputs structured information to the knowledge base. The full pass sequence is defined in [corporate/spec/analyzer.seq](corporate/spec/analyzer.seq).

It is not meant to be exhaustive; it exists to illustrate what NLP++ can do when rules, dictionaries, and a knowledge base work together.

> **Note:** the `words` stubs in the analyzer sequence are a holdover from the first version of VisualText, which auto-generated rules from examples. That feature is not currently available in the VSCode version of VisualText.

### Files

[files/](files/) is an example of an analyzer that walks a directory of files while maintaining a knowledge base that persists across files. In this example the knowledge is just a counter, but the same pattern serves as a base for much more sophisticated tasks where each new file contributes to — and benefits from — knowledge accumulated from earlier files in the run.

### Full English Parser (parse-en-us)

[parse-en-us/](parse-en-us/) is a full syntactic parser for US English created by Amnon Meyers and developed bottom-up over many years. It produces a syntactic parse tree for arbitrary English text using only syntax (no semantics) and draws its part-of-speech information from an early version of WordNet.

It is recommended as a starting template whenever an analyzer needs full English parsing — it has served as the basis for numerous text analyzers over the years.

### NLP Tutorials

[nlp-tutorials/](nlp-tutorials/) holds the analyzers that accompany the [NLP++ video tutorial series](http://tutorials.visualtext.org) on the [NLP VisualText YouTube channel](http://youtube.visualtext.org). Each numbered tutorial directory pairs with a video and walks through one concept — tokenization, NLP++ variables, recursion, special variables, paragraphs and sentences, automatic rule generation, regions, anaphora resolution, dictionaries, mod files, ambiguity resolution, and more. See [nlp-tutorials/README.md](nlp-tutorials/README.md) for the full index with video links.

### NLPFix Analyzers

[nlpfix-analyzers/](nlpfix-analyzers/) contains the three analyzers featured on the [NLPFix](http://nlpfix.com) demo page:

- **date-time** — extracts dates and times, demonstrating that NLP++ is more readable and maintainable than the equivalent regex.
- **formatting** — parses documents that were converted from formatted text to plain text, a task that is impractical with regex or pure Python.
- **nlp** — consolidates information about entities mentioned throughout a text by combining rules, functions, the parse tree, and the knowledge base.

## Building & Releases

Releases are produced automatically by [.github/workflows/analyzer.yml](.github/workflows/analyzer.yml). When a GitHub release is created, the workflow checks out the repository, initializes submodules, zips the five analyzer directories (`corporate/`, `files/`, `parse-en-us/`, `nlp-tutorials/`, `nlpfix-analyzers/`) into `analyzers.zip`, and attaches the archive to the release. The resulting bundle is what VisualText downloads as its set of example analyzers.

## Learning NLP++

- **Documentation:** [visualtext.org](http://visualtext.org)
- **Video tutorials:** [tutorials.visualtext.org](http://tutorials.visualtext.org)
- **YouTube channel:** [youtube.visualtext.org](http://youtube.visualtext.org)
- **NLP-ENGINE source:** [github.com/VisualText/nlp-engine](https://github.com/VisualText/nlp-engine)
- **VSCode extension:** [github.com/VisualText/vscode-nlp](https://github.com/VisualText/vscode-nlp)
