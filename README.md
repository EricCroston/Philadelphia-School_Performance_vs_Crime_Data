# Philadelphia Crime Incidents and School Metrics Correlation Analysis

## Project Overview
This project explores potential correlations between crime incidents in Philadelphia during the year 2024 and school performance metrics from the previous year, 2023. It aims to understand how crime rates might influence educational outcomes across different Police Service Areas (PSAs) in the city.

https://ericcroston.github.io/Philadelphia-School_Performance_vs_Crime_Data/

## Table of Contents
- **[data](./data)**: Data files used in the project, including cleaned and raw datasets.
- **[School_Metrics_Cleanup.ipynb](./Scool_Metrics_Cleanup.ipynb)**: Jupyter notebook for cleaning school metrics data.
- **[Outputs_School_Metrics](./Outputs_School_Metrics)**: Contains outputs from school metrics analysis.
- **[Police_and_Incidents_Clean_up and Correlation Analysis.ipynb](./Police_and_Incidents_Clean_up%20and%20Correlation%20Analysis.ipynb)**: Jupyter notebook for cleaning and analyzing police and incident data.
- **[Outputs_Police](./Outputs_Police)**: Contains outputs related to police data analysis.
- **[Building SQL Database](./Building%20SQL%20Database)**: Comprehensive documentation including the ERD **[Diagram-Schools_Metrics_Police_Incidents.png](./Diagram-Schools_Metrics_Police_Incidents.png)** : Diagram             illustrating the data flow and relationships, **[Queries for phila_resources sql database.sql](./Queries%20for%20phila_resources%20sql%20database.sql)** : SQL queries used in the project.SQL Queries, and Schema            **[Schema for phila_resources sql database.sql](./Schema%20for%20phila_resources%20sql%20database.sql)** : SQL schema for the project database for the database.
- **[SQL Outputs](./SQL%20Outputs)**: Contains SQL query outputs and results.
- **[static](./static)**: Includes Java Script and CSS files for the web interface, Interactive Map, and Graphs.
- **[index.html](./index.html)**: Main entry point for the project's web interface.
- **[Presentation_Philly_Crime_School.pptx](./Presentation_Philly_Crime_School.pptx)**: Main project presentation.
- **[Schools_Crime_Presentation.pdf](./Schools_Crime_Presentation.pdf)**: PDF of project presentation.
- **[README.md](./README.md)**: Project documentation.
  
## Ethical Considerations
When analyzing data that involves crime statistics and educational performance, several ethical considerations must be taken into account:

- **Privacy and Anonymity**: While data sources are publicly available, care is taken to ensure that no personal information about individuals involved in crime reports or students in schools is used or disclosed. All analyses are performed at an aggregated level to maintain anonymity.

- **Bias and Fairness**: This analysis recognizes the potential for biases inherent in crime reporting and school performance evaluations. Efforts are made to present data and findings fairly, without perpetuating stereotypes or unfairly targeting specific communities.

- **Impact Awareness**: The findings from this analysis are intended to inform and support improvements in educational and community safety strategies. They should not be used to stigmatize communities or justify punitive measures that may adversely affect any demographic group.

- **Data Integrity and Transparency**: All sources of data are clearly documented, providing transparency about the origins and nature of the data used. Changes to data, such as cleaning or transformations, are also fully documented to ensure the analysis can be reproduced and verified by others.

## Data Sources
This analysis uses datasets from various public sources to provide a comprehensive view of the relationship between crime rates and school performance in Philadelphia:

### Crime Incidents (2024)
Detailed records of crime incidents within Philadelphia for the year 2024.
- [Crime Incidents Data](https://opendataphilly.org/datasets/crime-incidents/)
- This file contains over 85,000 entries.

### School Performance Metrics (2023)
Performance metrics for Philadelphia schools for the school year 2022-2023.
- [School Metric Scores](https://www.philasd.org/performance/programsservices/open-data/school-performance/#school_progress_report_education_and_equity)

### Geospatial Data
- [Police Stations](https://opendataphilly.org/datasets/police-stations/)
- [Schools](https://opendataphilly.org/datasets/schools/)
- [ZIP Codes](https://opendataphilly.org/datasets/zip-codes/)
- [Police Service Areas](https://opendataphilly.org/datasets/police-service-areas/)

## Methodology
- **Data Cleaning and Preprocessing**: Ensuring both datasets are clean and formatted correctly.
    - School_Metrics_Cleanup.ipynb
    - Police_and_Incidents_Clean_up and Correlation Analysis.ipynb
- **Data Merging**: Combining datasets on the basis of PSA.
    - Police_and_Incidents_Clean_up and Correlation Analysis.ipynb
    - Database Design:
        - Diagram-Schools_Metrics_Police_Incidents.png
        - Schema for phila_resources sql database.sql
        - Queries for phila_resources sql database.sql
- **Statistical Analysis**: Identifying correlations between crime rates and school performance metrics.
    - Police_and_Incidents_Clean_up and Correlation Analysis.ipynb

 ![Uploading Screenshot 2024-08-14 154916.png…]()
     
- **Visualization**: Creating interactive visualizations to depict relationships.  
    - Interactive Map of Crime and School Locations and PSA and ZIP Code Boundaries
    - Visualization located here: https://elizabethvandergrift.github.io/Project-3/
    - static
        - style.css
        - logic.js

![Screenshot 2024-08-14 155212](https://github.com/user-attachments/assets/91487678-c085-4629-845f-fd5fa4a144e3)

![Screenshot 2024-08-14 155256](https://github.com/user-attachments/assets/ab016ac7-d861-42ff-91df-b935cf54601a)

![Screenshot 2024-08-14 155235](https://github.com/user-attachments/assets/9ef9e335-1164-4680-bb18-d3809abc4cef)

![Screenshot 2024-08-14 155439](https://github.com/user-attachments/assets/b96e85bb-576e-48ce-9287-d32e126fcc50)

## Technologies Used
- **Python**, **Plotly**, **D3.js**, **Pandas**, and **SQL Database**.

## Contributions  
This project was a collaborative effort, and I want to acknowledge the work of my fellow collaborators:

- **[Juan Camilo Bohorquez Rozo](https://github.com/RCamilo12):**  
  Led the frontend design and user experience, creating an interactive dashboard using JavaScript. The dashboard features interactive charts and a map to visualize the data.  
  **Key files:** `script.js`, `style.css`, `index.html`  

- **[Elizabeth Vandergrift](https://github.com/ElizabethVandergrift):**  
  Handled data processing, cleaning, and integration, as well as database queries.  
  **Key files:** `Police_and_Incidents_Clean_up and Correlation Analysis.ipynb`, `Queries for phila_resources sql database.sql`  

- **[Eric Croston](https://github.com/EricCroston):**  
  Focused on data processing, cleaning, integration, and building the database schema.  
  **Key files:** `School_Metrics_Cleanup.ipynb`, `Schema-Philly-School_vs_Crime.sql`  

### Refinements to [Original Group Project](https://github.com/ElizabethVandergrift/Philadelphia-CrimeData_and_SchoolMetrics)  
In addition to my contributions to data processing, cleaning, and database schema development, I refined collaborators' work to ensure consistency and functionality across the project. This included:  
- Reviewing and editing frontend components (`script.js`, `style.css`, `index.html`)  
- Verifying data integration workflows  
- Enhancing database functionality for efficiency and scalability
- Implementing a consistent file naming schema for clarity and organization

## Acknowledgments for Data Sources
- Philadelphia Police Department
- Philadelphia School District
- OpenDataPhilly
