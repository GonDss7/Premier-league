This project is a relational PostgreSQL database containing detailed information about the 2025 Premier League season. It includes player statistics, team performance, possession metrics, and salary data — fully cleaned and normalized for analysis and BI dashboards.

## 📂 Contents

- `player_stats`: Core table with player performance, position, nationality, and playing time.
- `player_possession`: Details on player possession, carries, and take-ons.
- `player_salaries`: Weekly and annual salary data for each player.
- `team_stats`: Aggregated team-level stats (age average, goals, assists, etc).
- `team_possession_stats`: Total team touches.
- `team_salary`: Team-level salary totals.
- `standings`: Final team rankings, wins, losses, draws, goals scored/conceded, and points.

## 🧩 Schema Design

The database follows a **star schema** design centered around:

- `player_stats` (joined to `player_possession` and `player_salaries`)
- `team_stats` (joined to `standings`, `team_salary`, and `team_possession_stats`)

All relationships are enforced with **foreign keys**, and player uniqueness is guaranteed using a generated `player_id` primary key.

## 🛠️ Tools Used

- **PostgreSQL 17**
- **pgAdmin 4**
- Python & Pandas (for data cleaning)
- Excel (for quick preprocessing)
- Git & GitHub (version control)

## 🔁 How to Restore This Database

1. Open **pgAdmin** or connect via terminal.
2. Create an empty database (e.g., `Premier_League`).
3. Run the following SQL script (included in this repo):

```bash
-- From pgAdmin: Right-click on the database > Restore
-- Select Format: Plain, then load `premier_league.sql`

![image](https://github.com/user-attachments/assets/b6cbf74c-15ee-42e8-a66a-7020a6a8bc0d)
