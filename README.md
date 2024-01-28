# Famous People

## Overview
This project demonstrates the use of SQL relational databases by creating tables that represent famous people, their movies, and their personal relationships. It includes tables like `movie_stars`, `movies`, `star_movies`, and `marriages` to model the connections between different entities.

## Database Structure
- `movie_stars`: Information about movie stars, including their name and age.
- `movies`: Lists movies along with their release year.
- `star_movies`: Links movie stars with the movies they have starred in.
- `marriages`: Reflects marriage information between movie stars.

## Example tables

### Таблица `movie_stars`
| ID | Name            | Age |
|----|-----------------|-----|
| 1  | John Doe        | 35  |
| 2  | Jane Smith      | 28  |
| 3  | Emily Johnson   | 40  |
| ... | ...             | ... |

### Таблица `movies`
| ID | Title                  | Year |
|----|------------------------|------|
| 1  | The Unseen Journey     | 2020 |
| 2  | Beyond the Horizon     | 2018 |
| 3  | Mystery of the Forest  | 2021 |
| ... | ...                    | ... |


## Example Queries
- Query to list the movies a specific actor has starred in.
- Query to check if two actors are married.
