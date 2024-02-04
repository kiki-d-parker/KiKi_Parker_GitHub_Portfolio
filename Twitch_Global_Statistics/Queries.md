# Twitch Global Statistics
## Queries

**Top 10 Games by Hours Watched**
````sql
SELECT game AS "Game",
    SUM(watch_time) AS "Hours Watched"
FROM game_data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
````
**Result:**
| Game               | Hours Watched |
|--------------------|---------------|
| Just Chatting      | 3100964111    |
| Grand Theft Auto V | 1334643691    |
| League of Legends  | 1322721813    |
| VALORANT           | 988201714     |
| Counter-Strike     | 686253955     |
| Minecraft          | 583090080     |
| Fortnite           | 582667213     |
| Dota 2             | 517116313     |
| World of Warcraft  | 262619588     |
| Apex Legends       | 196797208     |

**Total Hours Watched of Games**
````sql
SELECT SUM(watch_time) AS "Total Hours Watched"
FROM game_data;
````
**Result:**
| Total Hours Watched |
|---------------------|
| 10422971562         |

**Top 10 Streamers by Hours Watched**
````sql
SELECT channel AS "Channel",
    SUM(watch_time) AS "Hours Watched"
FROM streamer_data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
````
**Result:**
| Channel     | Hours Watched |
|-------------|---------------|
| KaiCenat    | 104350072     |
| Gaules      | 103948720     |
| ibai        | 100474374     |
| xQc         | 80355519      |
| kingsleague | 64562309      |
| tarik       | 51635943      |
| fps_shaka   | 45398610      |
| ESLCS       | 32922045      |
| riotgames   | 30388951      |
| HasanAbi    | 24607637      |

**Total Hours Watched of Streamers**
````sql
SELECT SUM(watch_time) AS "Total Hours Watched"
FROM streamer_data;
````
**Result:**
| Total Hours Watched |
|---------------------|
| 1049900092          |

**Total Average Viewers**
````sql
SELECT SUM(average_viewers) AS "Total Average Viewers"
FROM global_data;
````
**Result:**
| Total Average Viewers |
|-----------------------|
| 29412065              |

**Average Viewers by Month**
````sql
SELECT MONTHNAME(date) AS "Month",
    SUM(average_viewers) AS "Average Viewers"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);
````
**Result:**
| Month     | Average Viewers |
|-----------|-----------------|
| January   | 2512735         |
| February  | 2551454         |
| March     | 2409835         |
| April     | 2444628         |
| May       | 2439527         |
| June      | 2441886         |
| July      | 2457954         |
| August    | 2405516         |
| September | 2351154         |
| October   | 2449774         |
| November  | 2467529         |
| December  | 2480073         |

**Total Peak Viewers**
````sql
SELECT SUM(peak_viewers) AS "Total Peak Viewers"
FROM global_data;
````
**Result:**
| Total Peak Viewers |
|--------------------|
| 59800886           |

**Peak Viewers by Month**
````sql
SELECT MONTHNAME(date) AS "Month",
    SUM(peak_viewers) AS "Peak Viewers"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);
````
**Result:**
| Month     | Peak Viewers |
|-----------|--------------|
| January   | 5593050      |
| February  | 5364876      |
| March     | 5314247      |
| April     | 4548556      |
| May       | 4354877      |
| June      | 4633797      |
| July      | 6242790      |
| August    | 4106733      |
| September | 4593138      |
| October   | 4597990      |
| November  | 4248613      |
| December  | 6202219      |

**Total Average Channels**
````sql
SELECT SUM(average_channels) AS "Total Average Channels"
FROM global_data;
````
**Result:**
| Total Average Channels |
|------------------------|
| 1134572                |

**Average Channels by Month**
````sql
SELECT MONTHNAME(date) AS "Month",
    SUM(average_channels) AS "Average Channels"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);
````
**Result:**
| Month     | Average Channels |
|-----------|------------------|
| January   | 93349            |
| February  | 96466            |
| March     | 93136            |
| April     | 95753            |
| May       | 90764            |
| June      | 92217            |
| July      | 93179            |
| August    | 94839            |
| September | 96346            |
| October   | 91932            |
| November  | 96644            |
| December  | 99947            |

**Total Peak Channels**
````sql
SELECT SUM(peak_channels) AS "Total Peak Channels"
FROM global_data;
````
**Result:**
| Total Peak Channels |
|---------------------|
| 1733538             |

**Peak Channels by Month**
````sql
SELECT MONTHNAME(date) AS "Month",
    SUM(peak_channels) AS "Peak Channels"
FROM global_data
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);
````
**Result:**
| Month     | Peak Channels |
|-----------|---------------|
| January   | 145497        |
| February  | 150685        |
| March     | 154987        |
| April     | 145511        |
| May       | 133783        |
| June      | 132569        |
| July      | 128248        |
| August    | 134552        |
| September | 141151        |
| October   | 137208        |
| November  | 146081        |
| December  | 183266        |
