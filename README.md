# IPL_dataAnalysis 

Data analysis of IPL data from 2008-2022.

## Overview

This repository contains an exploratory data analysis (EDA) of IPL (Indian Premier League) cricket data from 2008 to 2022. The main focus is on uncovering insights from historical IPL matches using Python and SQL, with visualizations and advanced queries.

- **Jupyter Notebook:** EDA and visualizations
- **SQL scripts:** Advanced queries and data aggregation
- **Dataset Source:** [Kaggle IPL Dataset](https://www.kaggle.com/datasets/vora1011/ipl-2008-to-2021-all-match-dataset/data)

## Features

- Exploratory data analysis using Python (NumPy, Pandas, Matplotlib, Seaborn)
- Advanced SQL queries for player and match statistics
- Scripts to create aggregated stats tables for players and bowlers
- Calculation of important metrics (batting average, strike rate, boundary percentage, bowling economy, all-rounder performance)
- Visualizations for trends and insights
- Ready to run in Google Colab

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Shruti-lab/IPL_dataAnalysis.git
cd IPL_dataAnalysis
```

### 2. Dataset

Download the IPL dataset from Kaggle and place the `IPL_Matches_2008_2022.csv` file in your working directory or Colab environment.

### 3. Run Analysis

You can open the main notebook in Google Colab:

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/Shruti-lab/IPL_dataAnalysis/blob/main/IPL_analysis.ipynb)

Or run locally:

```bash
pip install numpy pandas matplotlib seaborn
jupyter notebook IPL_analysis.ipynb
```

### 4. SQL Analysis

- SQL scripts are in the `sql/` directory.
- Use these scripts with your favorite SQL environment (BigQuery, PostgreSQL, etc.).
- Scripts include player and bowler stats table creation and advanced queries for performance metrics.

## Directory Structure

```
.
├── IPL_analysis.ipynb      # Main analysis notebook
├── sql/
│   ├── advance_queries.sql # Advanced queries for stats and insights
│   ├── create_player_stats.sql # Script to create player stats table
│   └── create_bowler_stats.sql # Script to create bowler stats table
└── README.md
```

## Usage Examples

- Find highest run scorers, best strikers, top boundary hitters, and best bowlers using SQL.
- Use the notebook for visual EDA and interactive exploration.

## Contributing

Contributions are welcome! Please fork the repo, make your changes, and open a pull request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

## License

No explicit license provided. Please open an issue if you have questions about usage.

## Acknowledgements

- IPL dataset by [Kaggle user vora1011](https://www.kaggle.com/datasets/vora1011/ipl-2008-to-2021-all-match-dataset)
