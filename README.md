This assignment is divided into three core components:

### 1. `empty_cells.sh` (in `empty_cells/`)
- Detects and reports the number of empty fields in each column of the dataset
- Helps understand which fields are unreliable or need cleaning

### 2. `preprocess.sh` (in `preprocess/`)
- Cleans the raw dataset:
  - Removes malformed rows
  - Normalizes fields
  - Filters invalid values
  - Handles duplicate or multi-value fields
- Produces a cleaned version of the dataset (`cleaned.tsv`)

### 3. `analysis.sh` (in `analysis/`)
- Performs exploratory analysis on the cleaned dataset:
  - Identifies most popular mechanics/domains
  - Calculates correlations (e.g., year vs rating, complexity vs rating)
  - Summarizes key statistics
