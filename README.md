# P8105 Final Project
**Mass Shootings in the United States (2018–2024): An Analysis**

This project analyzes mass shootings in the United States from 2018 to 2024. Using data from Wikipedia and U.S. Census Bureau, we aim to explore trends, demographics, and geographic patterns associated with these incidents. The project also includes statistical modeling and an interactive dashboard for visualizing and interpreting the results.


## Data Sources
1. **Wikipedia**:
   - Data on mass shootings in the US from 2018 to 2024 [(Source)](https://en.wikipedia.org/wiki/List_of_mass_shootings_in_the_United_States_in_2024)
   - The pages for each year (2018–2024) can be accessed via the following pattern: `https://en.wikipedia.org/wiki/List_of_mass_shootings_in_the_United_States_in_{year}`  
     Replace `{year}` with a specific year (e.g., `2018`, `2019`) to retrieve data for that year.

2. **U.S. Census Bureau**:
   - Various state-level data, including population, average income, unemployment rate, poverty rate, etc.

## Project Workflow
1. **Web-Scraping:** Run `web_scraping.py` 
   ```bash
   python web_scraping.py
   ```
2. **Fetch state-level data from the U.S. Census Bureau (Using API):** Run `Census_data.Rmd`
   ```bash
   rmarkdown::render("Census_data.Rmd")
   ```
3. **Data Preprocessing:** Run `data_cleaning.Rmd` 
   ```bash
   rmarkdown::render("data_cleaning.Rmd")
   ```
Now you can create the website directly from RStudio by clicking the **Build Website** button in the Build tab. This will compile all the .Rmd files into HTML and organize them into a cohesive website.

4. **EDA and Analysis:** Run `EDA_code.Rmd`
   ```bash
   rmarkdown::render("EDA_code.Rmd")
   ```
5. **Statistical Modeling:** Run `modeling.Rmd`
   ```bash
   rmarkdown::render("modeling.Rmd")
   ```
6. **RShiny DashBoard:** Run `shiny_dashboard.Rmd`
   ```bash
   rmarkdown::render("rshiny_dashboard/shiny_dashboard.Rmd")
   ```



   
