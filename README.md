# Getting and Cleaning Data Project
A repository for Coursera's online course about Data Science with John Hopkins University for "Getting and Cleaning Data" final project.

## Prerequisites
1. Download the dataset [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzipped all files into a directory.
For more information about how the data was obtained, visit [this](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) page. Then extract the files in the `UCI HAR Dataset/` directory.

2. Clone this repository
    <code>
    git clone https://github.com/archeltaneka/coursera-johnhopkins-datascience-getting-and-cleaning-data-project.git
    </code>

3. RStudio (tested on Version 1.4.1106)

4. `dplyr` package. To install, open R console and type

    <code>
    install.packages('dplyr')
    </code>

## Executing files
1. Open RStudio
2. Open `run_analysis.R` script.
3. Click `source` on the upper-right hand side of the editor.
4. You should see a new file named `tidydata.txt` upon completion.
