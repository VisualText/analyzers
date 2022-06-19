# NLP-ENGINE Analyzers

These are the text analyzers that are bundled with the NLP-ENGINE.

## Corporate Analyzer

This is an example analyzer that tries to highlight the power of NLP++ and the knowledge base. It is not meant to be thorough but simply illustrate the capabilities of NLP++.

NOTE: the "words" stubs in the analyzer sequence are from the first version of VisualText which auto-generated rules from examples. Currently, this feature is not available in the VSCode version of VisualText.

## Files

This is an example of an analyzer that works over a directory of files with a persistent knowledge base. In this case, the knowledge is simply a counter. But this can serve as a basis for much more complex tasks where as texts are processed, knowledge can be used that persists between the processing of each file.

## Noop Analyzer

This is just what it says: a noop analyzer.

## Full English Parser

This analyzer was developed over 20 years for English and is a purely syntactic analyzer for English. It will come up with a syntactic parse tree for any English text.

The dictionary came from an early version of wordnet.
