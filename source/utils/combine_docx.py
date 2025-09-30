from docxcompose.composer import Composer
from docx import Document

def combine_word_documents(input_files, output_file):
    """Combine multiple word documents into a single document.

    Parameters
    ----------
    input_files : list of str
        List of file paths to the input word documents.
    output_file : str
        File path to the output word document.
    """
    # Create a new document using the first input file and use it to initialise 
    # a composer.
    doc = Document(input_files[0])
    composer = Composer(doc)

    # Append the remaining input files to the composer.
    for file in input_files[1:]:
        doc = Document(file)
        composer.append(doc)

    # Save the combined document to the output file.
    composer.save(output_file)

# Combine the front matter and body of the guideline into a single document.
combine_word_documents(
    input_files=["source/guideline/front_matter.docx", 
                 "output/body.docx"],
    output_file="output/iala_ms2_maritime_service.docx")