# Spotify Data Analysis Using PostgreSQL

## 📌 Project Overview
This project involves analyzing a dataset of **17,715 songs** using **PostgreSQL** and **pgAdmin4** to gain insights into song popularity, streaming trends, and listener preferences.
The dataset was sourced from [Kaggle](https://www.kaggle.com/datasets/sanjanchaudhari/spotify-dataset).

## 📂 Project Structure
```
Spotify Data Analysis Using PostgreSQL
│── Data
│   ├── cleaned_dataset.csv
│
│── SQL Scripts
│   ├── spotify_database.sql
│   ├── spotify_data_analysis.sql
│
│── spotify_schema.png
│── Problem Statements.pdf
│── Analysis Outcomes.pdf
│── README.md
```

## 🛠️ Tools & Technologies Used
- **PostgreSQL** - For database management and SQL queries
- **pgAdmin 4** - For database visualization and query execution
- **Excel** - For initial data exploration and cleaning

## 🧹 Data Cleaning
- Removed missing and duplicate values
- Standardized column names
- Converted data types for proper analysis

## 🔎 Data Exploration
- Examined dataset structure and key attributes
- Identified distribution of key features like views, likes, and streams

## 📊 Data Analysis
### 🔥 Most Viewed Songs
| Track | Views |
|--------------------|--------------|
| Despacito | 8,079,649,362 |
| Shape of You | 5,908,398,479 |
| See You Again (feat. Charlie Puth) | 5,773,798,407 |
| Wheels on the Bus | 4,898,831,101 |
| Uptown Funk (feat. Bruno Mars) | 4,821,016,218 |

### ❤️ Most Liked Songs
| Track | Likes |
|--------------------|--------------|
| Despacito | 50,788,652 |
| See You Again (feat. Charlie Puth) | 40,147,674 |
| Dynamite | 35,892,575 |
| Shape of You | 31,047,780 |
| Boy With Luv (feat. Halsey) | 27,588,224 |

### 🎧 Most Streamed Songs on Spotify
| Track | Streams |
|------------------------------------|--------------|
| Blinding Lights | 3,386,520,288 |
| Shape of You | 3,362,005,201 |
| Someone You Loved | 2,634,013,335 |
| Rockstar (feat. 21 Savage) | 2,594,926,619 |
| Sunflower (Spider-Man: Into the Spider-Verse) | 2,538,329,799 |

## 📈 Key Insights
- **"Despacito"** dominates both views and likes on YouTube, indicating massive global popularity.
- **"Shape of You"** consistently ranks in the top 5 across views, likes, and streams, highlighting its widespread success.
- **Blinding Lights** is the most streamed song on Spotify, surpassing even "Shape of You."
- Songs with **high danceability** and **energy** tend to have more views and likes.
- The difference between **Spotify and YouTube preferences** reveals distinct audience behavior on each platform.

## 📜 How to Use This Project
1. Clone the repository:
   ```sh
   git clone https://github.com/InsaneIshita/Spotify-Data-Analysis-PostgreSQL.git
   ```
2. Open **pgAdmin 4** and create the database using `spotify_database.sql`.
3. Run `spotify_data_analysis.sql` to perform the queries and generate insights.
4. Check the **Analysis Outcome PDF** for a summary of key findings.

## 📧 Connect with Me
- **LinkedIn**: [Ishita Singh](https://www.linkedin.com/in/ishitasingh3992)
- **Email**: singhishita@gmail.com

---
Let’s connect! If you find this analysis insightful, feel free to star ⭐ the repo & share your thoughts! 🎵
