# 6-2 Intro to SQL

Lecture code for [Intro to SQL](https://marcylabschool.gitbook.io/marcy-lab-school-docs/mod-6-databases/2-intro-to-sql).

## Setup

This lesson uses the `films_db` database. If you haven't set it up yet, run the setup file:

**Mac:**
```sh
psql -f setup.sql
```

**Windows/WSL:**
```sh
sudo -u postgres psql -f setup.sql
```

Then connect:

```sh
psql films_db          # Mac
sudo -u postgres psql films_db   # Windows/WSL
```

## Files

- `setup.sql` — creates and seeds the `films_db` database
- `queries.sql` — practice queries for SELECT, INSERT, UPDATE, DELETE
