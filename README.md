This assignment is divided into three core components:

### 1. `empty_cells.sh`
- Detects and reports the number of empty fields in each column of the dataset
- Helps understand which fields are unreliable or need cleaning

 **Usage**:
./empty_cells.sh bgg_dataset.txt
**Output**: Column-wise empty field count printed to the terminal.

### 2. `preprocess.sh`
- Cleans the raw dataset:
  - Removes malformed rows
  - Normalizes fields
  - Filters invalid values
  - Handles duplicate or multi-value fields
- Produces a cleaned version of the dataset (`cleaned.tsv`)

 **Usage**:
./preprocess.sh bgg_dataset.txt


### 3. `analysis.sh` (in `analysis/`)
- Performs exploratory analysis on the cleaned dataset:
  - Identifies most popular mechanics/domains
  - Calculates correlations (e.g., year vs rating, complexity vs rating)
  - Summarizes key statistics

**Usage**:
./analysis bgg_dataset.tsv
