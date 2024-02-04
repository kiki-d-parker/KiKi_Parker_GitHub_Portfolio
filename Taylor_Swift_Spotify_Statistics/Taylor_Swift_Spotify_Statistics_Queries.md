## Taylor Swift Spotify Statistics Queries

**Total Followers**
````sql
SELECT followers AS "Total Followers"
FROM spotify_stats;
````
**Result:**
| Total Followers |
|-----------------|
| 100368471       |

**Total Singles**
````sql
SELECT COUNT(title) AS "Total Singles"
FROM singles;
````
**Result:**
| Total Singles |
|---------------|
| 60            |

**Total Single Streams**
````sql
SELECT SUM(streams) AS "Total Single Streams"
FROM singles;
````
**Result:**
| Total Single Streams |
|----------------------|
| 30397328244          |

**Total Studio Album Streams**
````sql
SELECT SUM(streams) AS "Total Studio Album Streams"
FROM studio_albums;
````
**Result:**
| Total Studio Album Streams |
|----------------------------|
| 49626944057                |

**Total Studio Albums**
````sql
SELECT COUNT(title) AS "Total Studio Albums"
FROM studio_albums;
````
**Result:**
| Total Studio Albums |
|---------------------|
| 10                  |

**Popularity**
````sql
SELECT popularity AS "Popularity"
FROM spotify_stats;
````
**Result:**
| Popularity |
|------------|
| 100        |

**Top 10 Singles by Streams**
````sql
SELECT title AS "Single",
    SUM(streams) AS "Streams"
FROM singles
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
````
**Result:**
| Single                                           | Streams    |
|--------------------------------------------------|------------|
| Blank Space                                      | 1698812112 |
| Cruel Summer                                     | 1668311663 |
| I Don't Wanna Live Forever (Fifty Shades Darker) | 1558353207 |
| Anti-Hero                                        | 1368423916 |
| Shake It Off                                     | 1308244238 |
| Lover                                            | 1201601808 |
| cardigan                                         | 1120603598 |
| Style                                            | 1118247952 |
| Look What You Made Me Do                         | 1058214803 |
| Wildest Dreams                                   | 907579608  |

**Top Studio Albums by Streams**
````sql
SELECT title AS "Studio Album",
    SUM(streams) AS "Streams"
FROM studio_albums
GROUP BY 1
ORDER BY 2 DESC;
````
**Result:**
| Studio Album | Streams    |
|--------------|------------|
| Lover        | 9004901136 |
| reputation   | 7198756964 |
| 1989         | 7107317771 |
| folklore     | 6693835227 |
| Midnights    | 6430076522 |
| evermore     | 3835036800 |
| Red          | 3145450855 |
| Speak Now    | 2804998463 |
| Fearless     | 2152661035 |
| Taylor Swift | 1253909284 |

**Most Streamed Single**
````sql
SELECT title AS "Single",
    SUM(streams) AS "Streams"
FROM singles
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
````
**Result:**
| Single      | Streams    |
|-------------|------------|
| Blank Space | 1698812112 |

**Year of Release of Studio Albums**
````sql
SELECT YEAR(release_date) AS "Year",
    title AS "Studio Album"
FROM studio_albums
ORDER BY 1;
````
**Result:**
| Year | Studio Album |
|------|--------------|
| 2006 | Taylor Swift |
| 2008 | Fearless     |
| 2010 | Speak Now    |
| 2012 | Red          |
| 2014 | 1989         |
| 2017 | reputation   |
| 2019 | Lover        |
| 2020 | folklore     |
| 2020 | evermore     |
| 2022 | Midnights    |

**Most Streamed Studio Album**
````sql
SELECT title AS "Studio Album",
    SUM(streams) AS "Streams"
FROM studio_albums
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
````
**Result:**
| Studio Album | Streams    |
|--------------|------------|
| Lover        | 9004901136 |
