This project processes and analyzes board game data using shell scripting and standard Unix tools. It consists of three main Bash scripts that help identify data issues, clean the dataset, and extract meaningful insights such as the most popular game mechanics, domains, and correlations between rating, year, and complexity.


This assignment is divided into three core components:

### 1. `empty_cells`
- Detects and reports the number of empty fields in each column of the dataset
- Helps understand which fields are unreliable or need cleaning

 **Usage**:
./empty_cells.sh bgg_dataset.txt

**Output**: Column-wise empty field count printed to the terminal.

### 2. `preprocess`
- Cleans the raw dataset:
  - Removes malformed rows
  - Replacing ; with tabs
  - Normalizes fields
  - Filters invalid values
  - Replacing commas in decimals with dots
  - Removing non-ASCII characters
  - Generating new IDs for missing values
  - Produces a cleaned version of the dataset (`cleaned.tsv`)

 **Usage**:
./preprocess bgg_dataset.txt > cleaned.tsv

**Output**: A clean, tab-separated file named cleaned.tsv with valid and usable rows.

### 3. `analysis` 
- Performs exploratory analysis on the cleaned dataset:
  - Identifies most popular mechanics/domains
  - Calculates correlations (e.g., year vs rating, complexity vs rating)
  - Summarizes key statistics

**Usage**:
./analysis bgg_dataset.tsv

**Output**: Summary analysis printed to the terminal, including top categories and correlation scores.

## Repository Link
https://github.com/Sravanichowdary9/Open-Source-Assignment-2/
