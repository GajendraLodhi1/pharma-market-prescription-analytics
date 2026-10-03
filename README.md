# Pharmaceutical Market & Prescription Analytics

**Subtitle**: NHS Prescription Cost Analysis using Python, SQL & Power BI

## 📌 Project Overview
This project involves analyzing the official UK government/NHS data—specifically the Prescription Cost Analysis (PCA) monthly dataset. The dataset contains the volume and cost of medicines dispensed in the community in England, including individual products and broader BNF categories.

As a Decision Analytics consultant, this project aims to address the following key commercial questions:
1. **Market**: Which therapeutic/product categories have the highest prescription volumes?
2. **Cost**: Which categories account for the largest spending?
3. **Geography**: How does prescription activity differ across regions (ICBs)?
4. **Trend**: Which categories are growing or declining?
5. **Forecast**: What could prescription demand look like in the coming months?
6. **Decision**: Which categories/regions should receive further commercial investigation?

## 📊 Dataset Information
- **Source**: [NHS Business Services Authority Open Data](https://opendata.nhsbsa.net/dataset/prescription-cost-analysis-pca-monthly-data)
- **Dataset**: Prescription Cost Analysis (PCA) Monthly Administrative Data
- **License**: Open Government Licence 3.0
- **Scope**: Initial analysis on July 2026 data. Full analysis will cover 2024–2026 data.

### Important Fields (Data Dictionary)
- `BNF_PRESENTATION_NAME`: Individual product/presentation
- `SUPPLIER_NAME`: Manufacturer/supplier
- `BNF_CHEMICAL_SUBSTANCE`: Active chemical/substance
- `BNF_PARAGRAPH`, `BNF_SECTION`, `BNF_CHAPTER`: Therapeutic/category hierarchy
- `ITEMS`: Prescription item count
- `TOTAL_QUANTITY`: Quantity prescribed/dispensed
- `NIC`: Net Ingredient Cost (spending measure)
- `ICB_CODE`: Geographic/commissioning identifier
- `DISPENSER_ACCOUNT_TYPE`: Pharmacy/dispensing doctor/appliance contractor
- `UNIT_OF_MEASURE`: Measurement unit for the quantity
- `PREP_CLASS` / `PRESCRIBED_PREP_CLASS`: Preparation classification

## 🛠️ Tech Stack
- **Python**: Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn (for EDA, cleaning, and ML forecasting)
- **SQL**: PostgreSQL / SQLite (for querying and aggregation)
- **Power BI**: For the executive dashboard
- **Excel**: For quick business analysis and scenario calculations
- **PowerPoint**: For commercial case study presentation

## 📁 Project Structure
```text
pharma-market-prescription-analytics/
├── data/                      # Contains raw datasets (e.g., pca_202607.csv)
├── notebooks/                 # Jupyter notebooks for EDA, analysis and modeling
├── sql/                       # SQL scripts for data analysis
├── dashboard/                 # Contains the Power BI dashboard file (.pbix)
├── presentation/              # Contains PowerPoint slides for the business case
├── figures/                   # Exported charts and graphs generated from the analysis
├── requirements.txt           # Python dependencies
└── README.md                  # Project documentation
```

## 🚀 Getting Started
1. Clone the repository.
2. Install requirements using `pip install -r requirements.txt`.
3. Ensure the PCA dataset (e.g. `pca_202607.csv`) is located in the `data/` directory.
4. Run `run_analysis.py` to generate the figures or execute the Jupyter notebooks sequentially.
