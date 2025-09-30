# IALA Guideline on VDES Authentication Techniques (DRAFT)

Interested in the MS-2 Aids to Navigation Maritime Service? Then you've come to the right place!

This repository contains materials used by IALA ARM Working Group 2 in drafting the MS-2 Maritime Service Specification.

## Repository Structure

The repository is organized as follows:

* [source](source/): This directory includes the source files for our documents, images and document processing tools. The document source files are written in Markdown and converted into Word documents using [Pandoc](https://pandoc.org/).

    * [howto](source/howto/): Source files for our Contributor's Guide.
    * [guideline](source/guideline/): Source files for the Guideline document. **This is where the main content is located.** Each section of the document is in a separate Markdown file. The front matter is currently a separate Word document and is merged with the rest of the document during the conversion process.
    * [images](source/images/): Image source files.
    * [bibliography](source/bibliography/): Holds a BibLaTex bibliography file for document referencing.
    * [utils](source/utils/): Various scripts and tools used in the document generation process.

* [resources](resources/): Contains resources used in our documents, such as images, templates and stylesheets. Image source files (such as Visio drawings) should be placed in `source/images/` rather than here.

* [references](references/): Contains reference documents.

* [.github/workflows](.github/workflows/): Contains GitHub Actions workflows for converting source files into Word documents.

* [output](output/): Stores the Word documents produced from the source files.

## Contributing

If you're interested in contributing to the development of the Guideline, please read the [Contributor's Guide](source/howto/how_to_contribute.md) and follow the instructions therein. In particular, your attention is drawn to the [Recommended Workflow](source/howto/how_to_contribute.md#recommended-workflow) section. A [video tutorial](https://youtube.com/playlist?list=PL8kqeDcGpskrUfczbMjfbkRz3qvxzXHCn&si=GHZU6r0Gv6hnfN1W) demonstrating the recommended workflow is also available.

**Avoid direct changes to the `main` branch.** Instead, create a new branch for your changes and submit a pull request. This will allow your changes to be reviewed and discussed before they are merged into the `main` branch.