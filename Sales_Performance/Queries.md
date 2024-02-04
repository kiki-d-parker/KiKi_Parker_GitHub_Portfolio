# Sales Performance
## Queries

**Monthly Sales, Costs, and Profits**
````sql
SELECT MONTHNAME(sales_date) AS "Month",
    ROUND(SUM(sales)) AS "Total Sales",
    ROUND(SUM(costs)) AS "Total Costs",
    ROUND(SUM(profits)) AS "Total Profits"
FROM orders
GROUP BY 1,
    MONTH(sales_date)
ORDER BY MONTH(sales_date);
````
**Result:**
| Month    | Total Sales | Total Costs | Total Profits |
|----------|-------------|-------------|---------------|
| January  | 9069088     | 6477920     | 2591168       |
| February | 8557316     | 6112369     | 2444948       |
| March    | 8942371     | 6387408     | 2554963       |
| April    | 8619196     | 6156568     | 2462627       |
| May      | 9177057     | 6555040     | 2622016       |

**Monthly Sales by Sales Channel**
````sql
SELECT sales_channel AS "Sales Channel",
    MONTHNAME(sales_date) AS "Month",
    ROUND(SUM(sales)) AS "Total Sales",
    ROUND(SUM(costs)) AS "Total Costs",
    ROUND(SUM(profits)) AS "Total Profits"
FROM orders
GROUP BY 1,
    2,
    MONTH(sales_date)
ORDER BY 1,
    MONTH(sales_date);
````
**Result:**
| Sales Channel | Month    | Total Sales | Total Costs | Total Profits |
|---------------|----------|-------------|-------------|---------------|
| Distributor   | January  | 2265812     | 1618437     | 647375        |
| Distributor   | February | 2208330     | 1577379     | 630952        |
| Distributor   | March    | 2132734     | 1523382     | 609353        |
| Distributor   | April    | 2137874     | 1527053     | 610821        |
| Distributor   | May      | 2274409     | 1624578     | 649831        |
| In-Store      | January  | 2243517     | 1602512     | 641005        |
| In-Store      | February | 2157962     | 1541402     | 616561        |
| In-Store      | March    | 2300849     | 1643463     | 657385        |
| In-Store      | April    | 2084023     | 1488587     | 595435        |
| In-Store      | May      | 2349260     | 1678043     | 671217        |
| Online        | January  | 2404269     | 1717335     | 686934        |
| Online        | February | 2127658     | 1519756     | 607902        |
| Online        | March    | 2213290     | 1580921     | 632369        |
| Online        | April    | 2201943     | 1572816     | 629127        |
| Online        | May      | 2298647     | 1641890     | 656756        |
| Wholesale     | January  | 2155491     | 1539636     | 615855        |
| Wholesale     | February | 2063365     | 1473832     | 589533        |
| Wholesale     | March    | 2295498     | 1639641     | 655857        |
| Wholesale     | April    | 2195356     | 1568111     | 627245        |
| Wholesale     | May      | 2254741     | 1610529     | 644212        |

**Sales, Costs, and Profits by Product**
````sql
SELECT product_name AS "Product Name",
    ROUND(SUM(sales)) AS "Total Sales",
    ROUND(SUM(costs)) AS "Total Costs",
    ROUND(SUM(profits)) AS "Total Profits"
FROM orders
    JOIN products ON orders.product_id = products.id
GROUP BY 1
ORDER BY 2 DESC;
````
**Result:**
| Product Name       | Total Sales | Total Costs | Total Profits |
|--------------------|-------------|-------------|---------------|
| Clocks             | 1097417     | 783870      | 313548        |
| Vases              | 1061440     | 758172      | 303269        |
| Cookware           | 1024284     | 731631      | 292653        |
| Ornaments          | 1017997     | 727141      | 290857        |
| Phones             | 1012004     | 722860      | 289144        |
| Candles            | 994393      | 710281      | 284112        |
| Collectibles       | 993001      | 709286      | 283715        |
| Table Lamps        | 992243      | 708745      | 283498        |
| Wall Frames        | 987728      | 705520      | 282208        |
| Rugs               | 975759      | 696971      | 278788        |
| Outdoor Decor      | 973733      | 695524      | 278210        |
| Dining Furniture   | 972837      | 694884      | 277953        |
| Floor Lamps        | 971814      | 694153      | 277661        |
| Pillows            | 970990      | 693564      | 277426        |
| TV and video       | 970241      | 693029      | 277212        |
| Bean Bags          | 969717      | 692655      | 277062        |
| Sculptures         | 965079      | 689342      | 275737        |
| Mirrors            | 965042      | 689316      | 275726        |
| Pendants           | 964096      | 688640      | 275456        |
| Cocktail Glasses   | 960165      | 685832      | 274333        |
| Stemware           | 958412      | 684580      | 273832        |
| Bedroom Furniture  | 954354      | 681681      | 272673        |
| Photo Frames       | 945994      | 675710      | 270284        |
| Platters           | 945440      | 675314      | 270126        |
| Wardrobes          | 939283      | 670916      | 268366        |
| Candleholders      | 937814      | 669867      | 267947        |
| Festive            | 934655      | 667611      | 267044        |
| Floral             | 931469      | 665335      | 266134        |
| Wine Storage       | 931120      | 665086      | 266034        |
| Outdoor Furniture  | 930721      | 664800      | 265920        |
| Vanities           | 929995      | 664282      | 265713        |
| Table Linens       | 928103      | 662931      | 265172        |
| Computers          | 921367      | 658119      | 263248        |
| Wall Coverings     | 900536      | 643240      | 257296        |
| Serveware          | 898978      | 642127      | 256851        |
| Wreaths            | 898889      | 642063      | 256825        |
| Bar Tools          | 897157      | 640826      | 256331        |
| Audio              | 893435      | 638168      | 255267        |
| Basketball         | 892966      | 637833      | 255133        |
| Furniture Cushions | 892744      | 637674      | 255070        |
| Accessories        | 887944      | 634245      | 253698        |
| Dinnerware         | 877808      | 627006      | 250802        |
| Bakeware           | 876047      | 625747      | 250299        |
| Baseball           | 874163      | 624402      | 249761        |
| Home Fragrances    | 856007      | 611433      | 244573        |
| Blankets           | 845473      | 603909      | 241564        |
| Bathroom Furniture | 844174      | 602982      | 241193        |

**Sales and Profits by Sales Team**
````sql
SELECT sales_team AS "Sales Team",
    IFNULL(ROUND(SUM(sales)), 0) AS "Total Sales",
    IFNULL(ROUND(SUM(costs)), 0) AS "Total Costs",
    IFNULL(ROUND(SUM(profits)), 0) AS "Total Profits"
FROM orders
    RIGHT JOIN sales_teams ON orders.sales_team_id = sales_teams.id
GROUP BY 1
ORDER BY 2 DESC;
````
**Result:**
| Sales Team          | Total Sales | Total Costs | Total Profits |
|---------------------|-------------|-------------|---------------|
| Nicholas Cunningham | 1856248     | 1325892     | 530357        |
| Donald Reynolds     | 1797952     | 1284252     | 513701        |
| Joe Price           | 1773076     | 1266482     | 506593        |
| Shawn Wallace       | 1766373     | 1261695     | 504678        |
| Carl Nguyen         | 1753377     | 1252412     | 500965        |
| Paul Holmes         | 1739917     | 1242798     | 497119        |
| Adam Hernandez      | 1739701     | 1242643     | 497057        |
| Shawn Cook          | 1733209     | 1238006     | 495203        |
| Anthony Berry       | 1727917     | 1234226     | 493690        |
| Patrick Graham      | 1727111     | 1233651     | 493460        |
| George Lewis        | 1711287     | 1222348     | 488939        |
| Roy Rice            | 1709397     | 1220998     | 488399        |
| Chris Armstrong     | 1708302     | 1220216     | 488086        |
| Joshua Little       | 1705260     | 1218043     | 487217        |
| Joshua Bennett      | 1691837     | 1208455     | 483382        |
| Jonathan Hawkins    | 1681168     | 1200834     | 480334        |
| Frank Brown         | 1673837     | 1195598     | 478239        |
| Joshua Ryan         | 1669714     | 1192653     | 477061        |
| Roger Alexander     | 1668651     | 1191894     | 476758        |
| Samuel Fowler       | 1662620     | 1187586     | 475034        |
| Todd Roberts        | 1661171     | 1186551     | 474620        |
| Keith Griffin       | 1657719     | 1184085     | 473634        |
| Jerry Green         | 1639895     | 1171354     | 468542        |
| Stephen Payne       | 1631126     | 1165090     | 466036        |
| Douglas Tucker      | 1627033     | 1162166     | 464867        |
| Shawn Torres        | 0           | 0           | 0             |
| Carlos Miller       | 0           | 0           | 0             |

**Sales by Region**
````sql
SELECT region AS "Region",
    ROUND(SUM(sales)) AS "Total Sales"
FROM orders
    JOIN store_locations ON orders.store_id = store_locations.id
    JOIN regions ON store_locations.state_code = regions.state_code
GROUP BY 1
ORDER BY 2 DESC;
````
**Result:**
| Region    | Total Sales |
|-----------|-------------|
| West      | 15227135    |
| South     | 13831000    |
| Midwest   | 9564135     |
| Northeast | 5742757     |

**Total Sales**
````sql
SELECT ROUND(SUM(sales)) AS "Total Sales"
FROM orders;
````
**Result:**
| Total Sales |
|-------------|
| 44365027    |

**Total Costs**
````sql
SELECT ROUND(SUM(costs)) AS "Total Costs"
FROM orders;
````
**Result:**
| Total Costs |
|-------------|
| 31689305    |

**Total Profits**
````sql
SELECT ROUND(SUM(profits)) AS "Total Profits"
FROM orders;
````
**Result:**
| Total Profits |
|---------------|
| 12675722      |

**Total Products Sold**
````sql
SELECT SUM(order_qty) AS "Total Products Sold"
FROM orders;
````
**Result:**
| Total Products Sold |
|---------------------|
| 110402              |

**Total Orders**
````sql
SELECT COUNT(order_number) AS "Total Orders"
FROM orders;
````
**Result:**
| Total Orders |
|--------------|
| 20000        |

**Profit Margin**
````sql
SELECT CONCAT(ROUND(SUM(profits) / SUM(sales) * 100, 2), '%') AS "Profit Margin"
FROM Orders;
````
**Result:**
| Profit Margin |
|---------------|
| 28.57%        |

**Sales by State**
````sql
SELECT state AS "State",
    ROUND(SUM(sales)) AS "Total Sales"
FROM orders
    JOIN store_locations ON orders.store_id = store_locations.id
GROUP BY 1
ORDER BY 2 DESC;
````
**Result:**
| State                | Total Sales |
|----------------------|-------------|
| California           | 8905982     |
| Texas                | 4598705     |
| Illinois             | 3655157     |
| Florida              | 2894003     |
| New York             | 2538968     |
| Indiana              | 1587359     |
| Colorado             | 1505652     |
| Arizona              | 1297449     |
| Connecticut          | 1230929     |
| North Carolina       | 1067400     |
| Virginia             | 998057      |
| Nevada               | 988710      |
| Washington           | 909523      |
| Georgia              | 903209      |
| Michigan             | 810224      |
| New Jersey           | 786258      |
| Tennessee            | 700550      |
| Missouri             | 672819      |
| Kansas               | 658821      |
| Ohio                 | 649094      |
| Oregon               | 578895      |
| Louisiana            | 575634      |
| Massachusetts        | 555088      |
| Utah                 | 477901      |
| Oklahoma             | 476966      |
| Alabama              | 452629      |
| Pennsylvania         | 384054      |
| Iowa                 | 374795      |
| South Carolina       | 363224      |
| Wisconsin            | 356409      |
| Minnesota            | 319097      |
| Maryland             | 239223      |
| Nebraska             | 222841      |
| New Mexico           | 221494      |
| Kentucky             | 216514      |
| Rhode Island         | 150370      |
| South Dakota         | 142297      |
| District of Columbia | 140613      |
| Hawaii               | 122553      |
| Mississippi          | 121232      |
| North Dakota         | 115222      |
| Idaho                | 109836      |
| Montana              | 109139      |
| New Hampshire        | 97091       |
| Arkansas             | 83038       |
