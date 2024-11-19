import requests
from bs4 import BeautifulSoup
import pandas as pd


def scrape_mass_shootings(years):
    for year in years:
        url = f"https://en.wikipedia.org/wiki/List_of_mass_shootings_in_the_United_States_in_{year}"
        response = requests.get(url)
        soup = BeautifulSoup(response.content, 'html.parser')

        table = soup.find('table', {'class': 'wikitable sortable'}) or soup.find('table', {'class': 'wikitable'})

        if table:
            headers = [th.text.strip() for th in table.find_all('th')]
            rows = [[td.text.strip() for td in tr.find_all('td')] for tr in table.find_all('tr')[1:]]
            df = pd.DataFrame(rows, columns=headers)
            df.to_csv(f'data/mass_shootings_{year}.csv', index=False)
            print(f"Saved data for {year}")
            print(df)
        else:
            print(f"No data found for {year}")


if __name__ == "__main__":
    years_to_scrape = [2018, 2019, 2020, 2021, 2022, 2023, 2024]
    scrape_mass_shootings(years_to_scrape)