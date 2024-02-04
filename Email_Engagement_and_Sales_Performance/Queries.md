# Email Engagement and Sales Performance
## Queries

**Sales by Product**
````sql
SELECT product AS "Product",
    SUM(sales) AS "Total Sales"
FROM customer_sales
GROUP BY 1
ORDER BY 2 DESC;
````
**Result:**
| Product             | Total Sales |
|---------------------|-------------|
| Networking          | 545656      |
| Financial Reporting | 542831      |
| Web Design          | 527199      |
| Power BI Consulting | 512507      |
| Azure Consulting    | 511053      |
| AWS Consulting      | 509680      |
| Web Hosting         | 498344      |
| Linux Consulting    | 494841      |
| Element Training    | 490830      |
| Consulting          | 481742      |

**Sales by Customer**
````sql
SELECT customer_name AS "Customer",
    SUM(sales) AS "Total Sales"
FROM customer_sales
GROUP BY 1
ORDER BY 2 DESC;
````
**Result:**
| Customer            | Total Sales |
|---------------------|-------------|
| Justin Butler       | 32348       |
| Gregory Simmons     | 31592       |
| Nicholas Morrison   | 31495       |
| Peter Castillo      | 30932       |
| Todd Watson         | 30355       |
| Patrick Rivera      | 29187       |
| Jack Phillips       | 27461       |
| Eric Armstrong      | 26729       |
| Roy Carpenter       | 25986       |
| Jose Riley          | 25759       |
| Wayne Gardner       | 25727       |
| Harold Matthews     | 25501       |
| Jose Williams       | 25499       |
| Jeremy Allen        | 25450       |
| Ralph Kelley        | 25236       |
| Juan Scott          | 24800       |
| Mark Montgomery     | 24752       |
| Mark Lee            | 24501       |
| Michael Lewis       | 24492       |
| Aaron Johnson       | 24428       |
| Paul Holmes         | 24356       |
| Peter Wells         | 24275       |
| Samuel Stewart      | 24184       |
| Joseph Lopez        | 24081       |
| Jason Diaz          | 24080       |
| Raymond Alexander   | 24039       |
| Louis Johnston      | 24029       |
| Jason Duncan        | 23848       |
| Eugene Cunningham   | 23753       |
| Douglas Tucker      | 23682       |
| Joshua Anderson     | 23579       |
| Anthony Parker      | 23504       |
| Nicholas Cunningham | 23313       |
| Bruce Porter        | 23245       |
| Lawrence Sanchez    | 23065       |
| Sean Vasquez        | 22941       |
| Justin Rodriguez    | 22915       |
| Henry Reyes         | 22907       |
| Robert Jackson      | 22843       |
| Raymond Barnes      | 22836       |
| Wayne Stone         | 22808       |
| Joshua Williams     | 22705       |
| Douglas Diaz        | 22434       |
| Todd Price          | 22364       |
| Thomas Sims         | 22335       |
| Brian Taylor        | 22317       |
| Charles Bell        | 22196       |
| Jonathan Cox        | 22125       |
| Jonathan Freeman    | 22099       |
| Terry Payne         | 22034       |
| Shawn Long          | 22024       |
| Martin Berry        | 21899       |
| Walter Watson       | 21890       |
| Charles Montgomery  | 21799       |
| Ralph Banks         | 21798       |
| Randy Simpson       | 21744       |
| Keith Schmidt       | 21736       |
| Adam Riley          | 21633       |
| Benjamin Morgan     | 21560       |
| Arthur Webb         | 21545       |
| Gregory Porter      | 21535       |
| Russell Boyd        | 21525       |
| Aaron Day           | 21501       |
| Philip Wheeler      | 21417       |
| Mark Simmons        | 21412       |
| Dennis Morris       | 21243       |
| Gerald Henry        | 21179       |
| Victor Lawson       | 21127       |
| Charles Fields      | 21052       |
| Christopher Wright  | 21034       |
| Howard Lynch        | 21016       |
| Jason Hudson        | 20998       |
| Eric Moore          | 20945       |
| Raymond Allen       | 20935       |
| Joe Rose            | 20904       |
| David Ford          | 20895       |
| Daniel Fernandez    | 20847       |
| Aaron Moreno        | 20833       |
| George Stanley      | 20817       |
| Gregory Boyd        | 20804       |
| Jesse Evans         | 20739       |
| Stephen Andrews     | 20714       |
| Richard Peterson    | 20698       |
| Phillip Peters      | 20682       |
| Earl Franklin       | 20658       |
| George Ellis        | 20646       |
| Thomas Duncan       | 20628       |
| Samuel Price        | 20609       |
| Walter Woods        | 20580       |
| Steven Howard       | 20565       |
| Bruce Butler        | 20545       |
| Clarence Cunningham | 20519       |
| Ernest Rivera       | 20448       |
| Jack Stevens        | 20433       |
| Willie Mason        | 20427       |
| Wayne Rodriguez     | 20290       |
| Carl Anderson       | 20225       |
| Frank Brown         | 20186       |
| Nicholas Stanley    | 20181       |
| Shawn Wallace       | 20177       |
| Douglas Greene      | 20160       |
| Benjamin Carter     | 20078       |
| Nicholas Williamson | 20060       |
| Keith Griffin       | 20059       |
| Paul Larson         | 20021       |
| John Robertson      | 19995       |
| Eric Bowman         | 19983       |
| Ryan Taylor         | 19946       |
| Fred Evans          | 19938       |
| Fred Romero         | 19926       |
| Todd Davis          | 19925       |
| Steve Diaz          | 19919       |
| Juan Lawrence       | 19912       |
| Fred Bryant         | 19910       |
| Victor Dean         | 19909       |
| Daniel Barnes       | 19848       |
| Joshua Bennett      | 19789       |
| Donald Collins      | 19784       |
| Daniel Dixon        | 19768       |
| Clarence Austin     | 19756       |
| Christopher Miller  | 19644       |
| Victor Ramos        | 19577       |
| Henry Stanley       | 19575       |
| Juan Ramirez        | 19570       |
| Gregory Ramirez     | 19561       |
| Jeremy Arnold       | 19514       |
| Albert Robinson     | 19496       |
| Daniel Carroll      | 19478       |
| Gary Baker          | 19477       |
| Antonio Morris      | 19464       |
| David Nguyen        | 19407       |
| Wayne Gordon        | 19405       |
| Ronald Bradley      | 19374       |
| Michael Allen       | 19364       |
| Edward Wright       | 19343       |
| Andrew Butler       | 19288       |
| Samuel Fowler       | 19284       |
| Clarence Greene     | 19239       |
| Gerald Rogers       | 19204       |
| Sean Olson          | 19190       |
| Eric Ward           | 19154       |
| Jeremy Vasquez      | 19147       |
| Benjamin Kim        | 19048       |
| James Foster        | 19047       |
| Christopher Kim     | 19043       |
| Benjamin Carpenter  | 19000       |
| Jimmy Harper        | 18975       |
| Shawn Cook          | 18955       |
| Frank Weaver        | 18890       |
| Thomas Gonzales     | 18888       |
| Anthony Torres      | 18785       |
| Louis Torres        | 18762       |
| Scott Mills         | 18749       |
| Keith James         | 18619       |
| Juan Hunt           | 18576       |
| Peter Gilbert       | 18573       |
| Jeremy Porter       | 18478       |
| Joe Hanson          | 18450       |
| Ernest Knight       | 18371       |
| Todd Roberts        | 18369       |
| Howard Morgan       | 18364       |
| Adam Wheeler        | 18351       |
| Christopher Ramos   | 18349       |
| Donald Reynolds     | 18339       |
| Edward Walker       | 18286       |
| Michael Lane        | 18240       |
| Steve Sanchez       | 18237       |
| Roger Tucker        | 18202       |
| Carlos Miller       | 18148       |
| Peter Cook          | 18136       |
| Joshua Romero       | 18116       |
| Stephen Payne       | 18113       |
| Gregory Jackson     | 18095       |
| Adam Hernandez      | 18057       |
| Gerald Alvarez      | 18045       |
| Carlos Martinez     | 17976       |
| Carl Collins        | 17888       |
| Victor Martinez     | 17815       |
| Joseph Walker       | 17797       |
| Keith Murphy        | 17733       |
| Edward Mason        | 17696       |
| Joe Carroll         | 17648       |
| Brian Warren        | 17609       |
| Jonathan Hawkins    | 17548       |
| Harry Hudson        | 17482       |
| Matthew Fernandez   | 17416       |
| Willie Day          | 17370       |
| Gregory Welch       | 17345       |
| Steven Young        | 17250       |
| Shawn Torres        | 17242       |
| Victor Gutierrez    | 17190       |
| Raymond Fields      | 17165       |
| George Adams        | 17157       |
| Brandon Wright      | 17149       |
| Philip Crawford     | 17144       |
| Bruce Hamilton      | 17113       |
| James Castillo      | 17108       |
| Paul Chapman        | 17043       |
| Billy Kennedy       | 17003       |
| Richard Cunningham  | 17002       |
| Frank Mason         | 16958       |
| Bobby Burton        | 16939       |
| Eugene Sims         | 16934       |
| Michael Ward        | 16923       |
| Charles Hughes      | 16907       |
| Joshua Little       | 16858       |
| Philip Bailey       | 16838       |
| Eric Shaw           | 16836       |
| Jesse Alvarez       | 16758       |
| Jason Gray          | 16605       |
| Juan Perez          | 16564       |
| Billy Evans         | 16529       |
| Larry Ross          | 16501       |
| Jerry Andrews       | 16399       |
| Carlos Hunt         | 16366       |
| Joshua Ryan         | 16363       |
| Victor Rogers       | 16306       |
| Raymond Burke       | 16249       |
| Phillip Harvey      | 16180       |
| Jerry Green         | 16106       |
| Nicholas Ward       | 15998       |
| Sean Black          | 15995       |
| Anthony Berry       | 15958       |
| Patrick Graham      | 15956       |
| Nicholas Simmons    | 15948       |
| Jonathan Lynch      | 15934       |
| Roy Rice            | 15782       |
| Roy Shaw            | 15773       |
| Matthew Lewis       | 15651       |
| Bruce Harris        | 15587       |
| Thomas Holmes       | 15527       |
| Larry Ray           | 15503       |
| Samuel Palmer       | 15493       |
| Russell Bailey      | 15459       |
| Justin Graham       | 15412       |
| George Lewis        | 15364       |
| Sean Alexander      | 15203       |
| Richard Hudson      | 15195       |
| Kevin Kim           | 15153       |
| Adam Myers          | 15081       |
| Joe Price           | 15059       |
| Dennis Ruiz         | 14955       |
| Johnny Butler       | 14849       |
| Steve Wells         | 14742       |
| Eugene Brooks       | 14677       |
| Wayne Ortiz         | 14613       |
| Louis White         | 14400       |
| Matthew Nguyen      | 14308       |
| Ryan Ford           | 14195       |
| Louis Harris        | 14093       |
| Anthony Simpson     | 14013       |
| Craig Reyes         | 13975       |
| Carl Nguyen         | 13952       |
| Henry Elliott       | 13921       |
| Daniel Perry        | 13683       |
| Shawn Snyder        | 13501       |
| Roy Murphy          | 13231       |
| Chris Armstrong     | 13122       |
| Jerry Simmons       | 12795       |
| Roger Alexander     | 12643       |
| Brandon Martin      | 11951       |
| Jeremy Peterson     | 11552       |
| Daniel Nguyen       | 8657        |

**Total Sales**
````sql
SELECT SUM(sales) AS "Total Sales"
FROM customer_sales;
````
**Result:**
| Total Sales |
|-------------|
| 5114683     |

**Sales by Month**
````sql
SELECT MONTHNAME(date) AS "Month",
    SUM(sales) AS "Total Sales"
FROM customer_sales
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);
````
**Result:**
| Month     | Total Sales |
|-----------|-------------|
| January   | 444166      |
| February  | 393950      |
| March     | 443411      |
| April     | 382472      |
| May       | 437320      |
| June      | 403806      |
| July      | 454729      |
| August    | 417511      |
| September | 426313      |
| October   | 425727      |
| November  | 424442      |
| December  | 460836      |

**Total Orders**
````sql
SELECT COUNT(*) AS "Total Orders"
FROM customer_sales;
````
**Result:**
| Total Orders |
|--------------|
| 10000        |

**Email Engagement**
````sql
SELECT COUNT(email_received) AS "Emails Delivered",
    COUNT(CASE WHEN email_received THEN 1 END) AS "Emails Received",
    COUNT(CASE WHEN email_opened THEN 1 END) AS "Emails Opened",
    COUNT(CASE WHEN link_clicked THEN 1 END) AS "Links Clicked"
FROM customer_emails;
````
**Result:**
| Emails Delivered | Emails Received | Emails Opened | Links Clicked |
|------------------|-----------------|---------------|---------------|
| 8368             | 4156            | 2054          | 1038          |
