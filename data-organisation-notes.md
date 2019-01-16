# Data Carpentry in R
https://bioinformatics-core-shared-training.github.io/2019-01-15-CRUK-Cambridge-DCinR//
https://pad.carpentries.org/2019-01-15-CRUK-Cambridge

## Data Organisation in Spreadsheets for Ecologists
https://datacarpentry.org/spreadsheet-ecology-lesson/

### Introduction (15min)
https://datacarpentry.org/spreadsheet-ecology-lesson/00-intro/index.html

**Objectives:** Describe best practices for organising data so computers can make the best use of data sets.

Good data organisation is the foundation of your research project.

- Spreadsheets:
  - lost of manual Work
  - Redo everything on new datasets
  - No tracking
  - Difficult to reproduce analysis
  - Programs available: Excel, LibreOffice, OpenOffice, ...
- *Exercise: post-it session*
  - Usage: what are you using spreadsheet for in your research?
  - Issue: which problems did you face with them?
  - what spreadsheet are good at? data entry, subsetting and sorting, organising, statistics, plotting, ...?
- Problems with spreadsheets
  - Good for data entry
  - Not so good for statistics and plotting: difficult to replicate analysis and easy mistake when selecting cells for applying formula
- What's next
  - formatting spreadsheet
  - dates as data
  - quality control
  - exporting data

### Formatting data tables in Spreadsheets (15min)
https://datacarpentry.org/spreadsheet-ecology-lesson/01-format-data/index.html

- Keep track of your data
  - never work on original file, always make a copy
  - keep track of what you do in a README file!
- Structure your data
  - columns for variable and rows for observations
- *Exercise:* Dataset presentation and first exercise
  - The data are observations of a small mammal community in southern Arizona. This is part of a project studying the effects of rodents and ants on the plant community that has been running for almost 40 years. The rodents are sampled on a series of 24 plots, with different experimental manipulations controlling which rodents are allowed to access which plots.
  - Download a messy version of it: https://ndownloader.figshare.com/files/2252083
  - Open it in a spreadsheet program
  - In pair, identify what is wrong with this spreadsheet and discuss steps to clean 2013 and 2014 tabs to put them in one spreadsheet
  - Solution to this exercise is the next two sessions on Formatting problems and Dates as data

### Formatting problems (15min)
https://datacarpentry.org/spreadsheet-ecology-lesson/02-common-mistakes/index.html

- Common errors
  - Using multiple tables
  - Using multiple tabs
  - Not filling in zeros: Leave it blank (best option)
  - Using problematic null values
  - Using formatting to convey information
  - Using formatting to make the data sheet look pretty
  - Placing comments or units in cells
  - Entering more than one piece of information in a cell
  - Using problematic field names: Underscores (`_`) are a good alternative to spaces
  - Using special characters in data: Only use alphanumeric characters and underscore, nothing else
  - Inclusion of metadata in data table
  - Date formatting
- Key points
  - Avoid using multiple tables within one spreadsheet.
  - Avoid spreading data across multiple tabs.
  - Record zeros as zeros.
  - Use an appropriate null value to record missing data.
  - Don’t use formatting to convey information or to make your spreadsheet look pretty.
  - Place comments in a separate column.
  - Record units in column headers.
  - Include only one piece of information in a cell.
  - Avoid spaces, numbers and special characters in column headers.
  - Avoid special characters in your data.
  - Record metadata in a separate plain text file.

### Dates as data
https://datacarpentry.org/spreadsheet-ecology-lesson/03-dates-as-data/index.html

- Date in spreadsheets: variety of ways that bring ambiguity in your data
- Date should be as unambiguous as possible
- *Exercise:* Export/import CSV data from dates' tab in spreadsheet
- Storing date:
  - day of year
  - YYYYMMDD as string

### Quality control
https://datacarpentry.org/spreadsheet-ecology-lesson/04-quality-control/index.html

- Data validation
- Sorting
- Conditional formatting
- Key points
  - Always copy your original spreadsheet file and work with a copy so you don’t affect the raw data.
  - Use data validation to prevent accidentally entering invalid data.
  - Use sorting to check for invalid data.
  - Use conditional formatting (cautiously) to check for invalid data.

### Exporting data

- Tab separated values (TSV)
- Comma separated values (CSV)
  - Caveats on commas
- Cross-platform Operability: line breaks
  - Unix style `\n`
  - Windows style `\r\n` (When exporting from Excel, save as a “Windows comma separated (.csv)” file)

## Data Cleaning with OpenRefine for Ecologists
https://datacarpentry.org/OpenRefine-ecology-lesson/

### Introduction
https://datacarpentry.org/OpenRefine-ecology-lesson/00-getting-started/index.html

- Keep track of the changes to your data with OpenRefine
- Check you have it installed
- Use Firefox or Chrome as default browser
- What is it?
  - Java program running locally using your web browser as an interface
  - No internet connection required
  - No data sent to a remote server
  - Capture all actions done onto your data by keeping the original
- *Exercise:* Check everyone has OpenRefine open at http://127.0.0.1:3333/

### Working with OpenRefine
https://datacarpentry.org/OpenRefine-ecology-lesson/01-working-with-openrefine/index.html

- Download data https://ndownloader.figshare.com/files/7823341
- Creating a project by loading a CSV file and clicking 'Create project'
- Faceting: exploring data by applying multiple filters
  - column scientificName > Facet > Text facet
  - sort facets by name and count
- *Exercise:* Find out how many years are represented. Which years have the most and least observations?
- Clustering: finding groups of different values that might be alternative representations of the same thing
  - on facet scientificName > click cluster
  - Select the key collision method and metaphone3 keying function
  - Click the Merge? box beside each, then click Merge Selected and Recluster to apply the corrections to the dataset
  - Do not merge more than once!
- Split: data in a column into multiple columns
  - scientificName column: Edit Column > Split into several columns...
  - use space separator, and uncheck Remove this column, then click ok
  - *Exercise:* some columns are empty: why? what can you do to fix this? Leading white spaces issue.
  - *Exercise:* change the second column name to species using Edit Column > Rename this column. NB. species already exists, use speciesName instead
- Undo / Redo: undo step 2 and 3 to leave the dataset in the state in which the scientificNames were clustered, but not yet split.
- Trim Leading and Trailing Whitespace
  - scientificName, choose Edit cells > Common transforms > Trim leading and trailing whitespace
  - the Split step has now disappeared from the Undo / Redo pane on the left and is replaced with a Text transform on 3 cells
  - *Exercise:* Perform the split again. why do we only have two columns this time?
  - Undo

*Faceting and clustering approaches can identify errors or outliers in data.*

### Filtering and Sorting with OpenRefine
https://datacarpentry.org/OpenRefine-ecology-lesson/02-filter-exclude-sort/index.html

- Filtering
  - scientificName > Text filter
  - Type in bai and show 50 rows
  - *Exercise:* How many scientific names are selected?
    - Facet > Text facet on the scientificName
  - *Exercise:* How would you restrict the selection to only one?
- Excluding entries: Facet > Text facet click include
  - *Exercise:* Include Baiomys taylori and Chaetodipus baileyi
- Sort
  - mo > Sort... select number
  Menu Sort has changed to:
  - mo > Sort > Sort...
  - mo > Sort > Reverse
  - mo > Sort > Remove sort
  - *Exercise:* Sort the data by plot. Which years were observations recorded for plot 1 in the filtered dataset ?
- Sorting by multiple columns: To restart the sorting process with a particular column, check the sort by this column alone box
  - *Exercise:* sort the data by month
  - *Exercise:* sort the data in chronological order
  - General top menu sort > remove sort

### Examining Numbers in OpenRefine
https://datacarpentry.org/OpenRefine-ecology-lesson/03-numbers/index.html

- Numbers
  - recordID > Edit cells > Common transforms... > To number
  - values change from left-justified to right-justified, and black to green colour
  - *Exercise:* transform three more columns into numbers including period. Can all columns be transformed into numbers?
- Numeric facet
  - For period column, edit one or two cells, replacing one with abc and one blank
  - period > Facet > Numeric facet
  - there are several checkboxes in this facet: Numeric, Non-numeric, Blank, and Error
  - *Exercise:* experiment with checking or unchecking these boxes to select subsets of your data
  - remove the facet and undo the edits
- Scatterplot facet
  - need two numeric columns recordID and period
  - recordID > Facet > Scatterplot facet

### Scripts from OpenRefine
https://datacarpentry.org/OpenRefine-ecology-lesson/04-scripts/index.html

- Scripts
  - Undo / Redo section, click Extract...
  - *Exercise:* apply to new dataset
  - Click the Undo / Redo tab > Apply... and paste commands in JSON format
- Reproducible science
  - All changes are being tracked in OpenRefine
  - Scripts should be published together with the dataset as part of the digital appendix of the research output

### Exporting and Saving Data from OpenRefine
https://datacarpentry.org/OpenRefine-ecology-lesson/05-save-export/index.html

- Saving: done automatically
- Exporting
  - Export > Export project
  - *Exercise:* Look at the files that appear in this folder. What files are here? What information do you think these files contain?
- Exporting clean data
  - Export > Tab-separated values (tsv) or Comma-separated values (csv)
  - Projects can be shared with collaborators, enabling them to see, reproduce and check all data cleaning steps you performed.

### Other Resources in OpenRefine
https://datacarpentry.org/OpenRefine-ecology-lesson/06-resources/index.html

- http://openrefine.org/
