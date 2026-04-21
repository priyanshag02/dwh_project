## About

The project provides a comprehensive end-to-end data warehousing solution, covering data extraction, transformation, and loading (ETL), schema design, and analytics-ready reporting to support informed decision-making.

## Data Architecture

The project implements the Medallion Architecture.

- **Bronze Layer (Raw Data)**
  - Ingests data directly from source systems (CSV files) into a PostgreSQL database without transformation.
  - This layer serves as the single source of truth, preserving the original data for traceability and reprocessing.
- **Silver Layer (Cleaned & Standardized Data)**
  - Applies data cleansing, validation, deduplication, and standardization techniques.
  - Data is transformed into a consistent and reliable format, making it suitable for downstream analysis.
- **Gold Layer (Business-Ready Data)**
    - Contains curated, analytics-ready datasets modeled using a star schema.
    - This layer is optimized for reporting, dashboards, and business intelligence use cases.
