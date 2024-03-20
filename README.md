**Overview**
This repo contains the replication package for a paper about the sexual trends in America according to the General Social Survey (GSS).

**File Structure**
The repo is structured as:

root folder contains the .qmd and and .bib files used for generating the paper
inputs - contains the raw data as obtained from the GSS site, llm usage statement, and preliminary sketches.
outputs - contains the cleaned dataset and output from the qmd
paper contains the PDF of the paper
scripts contains the R scripts used to simulate, clean, and test data

**Statement on LLM usage**
Aspects of the code were written with the help of GPT4. Entire chat history is available in inputs/llms/usage.txt.

**Note About Acquisition of Data**
Data was acquired through https://gssdataexplorer.norc.org/, using the export data function. Variables exported were "premarsx", "xmarsex", "pornlaw", and "teensex" along with "age", "region", and "sex" for analysis purposes. Raw data can be found in /inputs/data.
