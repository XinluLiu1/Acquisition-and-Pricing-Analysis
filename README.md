# Acquisition-and-Pricing-Analysis

## background
Athena Softworks, Inc. is a video game developer and publisher. They specialize in premium roleplaying games (RPGs) for PC play and have had published eight games to date. Athena distributes its games exclusively using Steam, the world’s largest distributor of PC games, which takes up 75% of the global market share. It is early 2020 and Athena is considering acquiring a new game title and there are three candidate games.

I am a member of the marketing analytics team at Athena and my manager has recently tasked me with conducting an independent analysis of the decision to acquire a new game title. Although I was not involved in the initial exploration process, I am now responsible for providing recommendations on **three key aspects** of this decision to safeguard against potential mistakes. 

1. Which game should Athena pursue, if any? 
2. How should the game be priced? 
3. How should Athena position this game?

## Three key decisions to make in conjunction
### Which game should Athena pursue, if any? 
Based on the case, there are three candidates that Athena is thinking about, which are Warrior Guild, Seraph Guardians and Evercrest. There are four action alternatives: 
1) Acquire nothing 
2) Acquire nothing but search for other candidates 
3) Acquire one of three 
4) Acquire two of three 
5) Acquire all
This alternatives can be decided based on three action standards: (Figure 1) 
1) **Financial Viability** refers to the capital investments that Athena can use to acquire new games. 1 means it doesn't have enough money, 2 means it can buy up to 2, and 3 means it has enough money to buy all three.
2) **Game’s Profitability** can be measured through conducting market research. The game deserves investment when the profitability is positive. (0-3 represents the number of games worth investing in). Generally this can be simply decided by three factors:
- _Demand: Market Size * Response Rate_   
① Market size: the potential demand for the game   
② Response rate: the percentage that target customers will purchase product based on different Price
- _Price: reasonable price to sell product (Detail can be seen in Q1-2)_ 
- _Cost: Fix cost + Variable cost_  
① Fixed cost: acquire & market + finalize development  
② Variable cost: original developer cost + Valve cost
Note: Here we just consider one-year performance with traditional price strategy (not dynamic pricing). In the real world, we might not only need to think about different price & marketing strategies through monitoring performance, but also take the competitors into consideration (e.g. perceptual map).
3) **Market Potential** is based on forecasts of industry trends and changes and the potential market competitions. 1 means Bad, 2 is Neutral and and 3 is Promising.  
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/876f9b8450e88f7295eea020da41aa08bc260228/Picture/Figure%201.png)

## How should the game be priced?
Considering the market price which is the price that customers would pay for the similar game in the current market, there are three action alternatives based on seven action standards (Table 1). However, in this case, I’d like to simplify the process and focus only on finding the reasonable price to **maximize revenue** (Price * Corresponding responses).
1) Breakeven price < Market price
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/8995583df88c42b1d2041e8fbe772496e1993b05/Picture/Table%201.png)
2) Breakeven price >= Market price, choose the price at least reach breakeven price. Balance between price and demand to maximize revenue.
## How should Athena position this game?
1) **Identify the target market:** Analyzing customer needs, preferences, and behavior to determine who is most likely to purchase the product. - Demographic characteristics - Behavior characteristics
2) **Identify product's unique value proposition:** Identifying the key features, benefits,
and advantages that the product offers that sets it apart from competitors. - Based on each segment’s Responses
3) **Develop a positioning statement:** Communicating the product's unique value proposition and how it solves the target market's problem or need
4) **Choose a positioning strategy:** Choosing strategy should align with the product's unique value proposition and the target market's needs and preferences
5) **Test and refine the positioning:** Monitoring customer feedback and market trends to ensure that the positioning is resonating with the target market
# Market estimate 
## Market size for the types of games Athena sells in 2019
Based on the data provided by SUPERDATA, the forecast global market for all PC games in 2019 is $26.3B consisting of $21.1B free-to-play PC games, $5.2B Premium PC games and $3.3B Pay-to-Play PC. Since Steam takes up 75% of the global market share, Steam’s market share in 2019 is $22.2B.

Athena sells Premium PC games, therefore, the whole market size for the types of games Athena sells in 2019 is $5.2B. If we take Steam into consideration (Athena’s games only publish on Steam), the market size is $3.9B assuming a consistent percentage between games globally and on Steam.

![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/a93eb653c6cc7a0894aaf4d82ad728107c1cb60b/Picture/Figure%202-1.png)

## Market size for the types of games Athena sells in 2020 (**Ignoring COVID-19**)
Same rule can be applied to project the market size in 2020 which turns out to be $5.3B globally ($3.975B on Steam).

![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/a93eb653c6cc7a0894aaf4d82ad728107c1cb60b/Picture/Figure%202-2.png)

## Market size for the types of games Athena sells in 2020 (**Considering COVID-19**)
COVID-19 had a mixed impact on the premium game market due to the following reasons:
1) _Increased demand:_ The demand for digital games including premium PC games increased as more people had to stay at home due to lockdown and social distancing measures.
2) _More competitions:_ With physical stores and retailers closing or reducing production, many premium game developers and publishers are turning their attention to digital distribution channels, and more games were developed on steam platforms.
3) _Reduced consumption:_ The economic downturn caused by COVID-19 has negatively impacted customers' revenues, which may reduce their willingness to purchase premium games.  
Generally speaking, COVID-19 had a significant impact on this premium PC games’ market, however, it's hard to tell whether such impact is good or bad.

# Segementation based on survey 
_Note: Coworkers conducted a survey conducted with a sample of prior customers. The survey contained a series of 40 statements and participants rated these on a 7-point Likert scale._
## Factor analysis
### Step1: Evaluate the data
To ensure the reliability and validity of the factor analysis, I first evaluated the data using both Bartlett's Test of Sphericity and the Kaiser-Meyer-Olkin (KMO) test. The result is highly significant (p < 2.22e-16) for Bartlett's Test, indicating that the correlations between variables are sufficiently strong for factor analysis. The KMO test yields an overall MSA of 0.98, well above the recommended threshold of 0.6, further supporting the suitability of the data for factor analysis. (Figure 3-1-1)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/8bf485c28e1a6607d5488f22c4e793414ea3a13b/Picture/Figure%203-1-1.png)
### Step2: Determine the number of factors
Conducted a principal components analysis with no rotation, used the scree plot to determine the optimal number of factors and ran parallel analysis to verify the result. The analysis revealed that **6 factors** are appropriate for this dataset, capturing 93.669% of the total data variances. This decision can also be proved by Parallel analysis and eigenvalues (>1). (Figure 3-1-2)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/8bf485c28e1a6607d5488f22c4e793414ea3a13b/Picture/Figure%203-1-2.png)
### Step3: Extract the factor solution and Create & name the factor scores
Performed varimax rotation on the extracted factors in our PCA analysis to facilitate interpretation of the factors, then named each factor based on the variables that are most heavily weighted in that factor. Below are the detailed descriptions of each of the 6 factors. (Figure 3-1-3)
_1) Factor1:_ Mastery -Describing variables related to challenge and strategy.   
_2) Factor2:_ Creativity -Describing variables related to design and discovery.   
_3) Factor3:_ Achievement -Describing variables related to complement and power.  
_4) Factor4:_ Action -Describing variables related to destruction and excitement.   
_5) Factor5:_ Social -Describing variables related to competition and community.   
_6) Factor6:_ Immersion -Describing variables related to fantasy and story.  
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/8bf485c28e1a6607d5488f22c4e793414ea3a13b/Picture/Figure%203-1-3-1.png)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/8bf485c28e1a6607d5488f22c4e793414ea3a13b/Picture/Figure%203-1-3-2.png)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/8bf485c28e1a6607d5488f22c4e793414ea3a13b/Picture/Figure%203-1-3-3.png)
## Cluster analysis
### Step 1: Determine the number of clusters
Used Ward's method and wss method on this matrix to determine the number of clusters based on the 6 factors described. As we can see from the graphics below, the most suitable **number of clusters is 5**. (Figure 3-2-1)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/4a5674688345c545b9ed2d28e61e55e64a921276/Picture/Figure%203-2-1.png)
### Step2: Calculate the final cluster solution and interpret the K-means output
Then, ran cluster analysis to create our 5 desired segments. While we do see some overlap in the clusters, by comparing the numbers associated with each of the cluster centers, we can clearly distinguish 5 groups: architect, bard, acrobat, ninja and bounty hunter. (Figure 3-2-2)  
_1) Cluster 1- Architect (Mastery+Achievement):_ Enjoy the challenge of finding and completing every task or objective in the game, and often willing to invest a significant amount of time and effort into doing so.  
_2) Cluster 2 - Bard (Creativity+Social) :_ Prioritize collaboration and teamwork over individual achievement and are motivated by the desire to experience the full range of what a game has to offer.  
_3) Cluster 3 - Acrobat (Mastery+Creativity):_ Motivated by a desire to take challenges, but also driven by customization and experiment.  
_4) Cluster 4 - Ninja (Mastery+Social):_ Pay attention to teamwork and be more than willing to take challenges.  
_5) Cluster 5 - Bounty Hunter (Action+Immersion):_ Be immersed in the game and play games with constant action and excitement.  
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/4a5674688345c545b9ed2d28e61e55e64a921276/Picture/Figure%203-2-2.png)
## Cross tabulation and Regression analysis
_- Gender:_ as the p-value < 0.05, there is a significant relationship between gender and cluster, only three cells are significant with chi-square > 3.84 which are female-Acrobat, male-Acrobat and female-Bounty Hunter. (Figure 3-3-1)  
_- Age:_ Based on the regression analysis built in the base of Creative team players, the overall model is not significant as the p-value = 0.2577 > 0.05 with two significant predictors Acrobat (p-value = 0.0466 < 0.05), and Bard (base) (p-value<0.05). According to the cross tabulation analysis, after re-coding age into three groups (<25 years/ 25-40 years/ 40+ years), the p-value = 0.5450312 > 0.05, means there is no significant relationship between age range and 5 clusters. (Figure 3-3-2)  
_- Income:_ Based on the regression analysis built in the base of Non-gamer, the overall model is not significant as the p-value = 0.1824 > 0.05 with two significant predictors Acrobat (p-value = 0.0181 < 0.05), and Bounty Hunter (base) (p-value<0.05) . According to the cross tabulation analysis, after re-coding income into three groups (<25K / 25-60K / over 60K), the p-value = 0.1763821 > 0.05, means there is no significant relationship between income and cluster. (Figure 3-3-3)  
_- Location:_ According to the cross tabulation analysis, after re-coding states into five groups (Northeast/ Midwest/ South/ West/ Pacific), the p-value = 0.8893887 > 0.05, means there is no significant relationship between location and cluster. (Figure 3-3-4)  
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/4a5674688345c545b9ed2d28e61e55e64a921276/Picture/Table%202.png)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/4a5674688345c545b9ed2d28e61e55e64a921276/Picture/Figure%203-3-1%20Gender.png)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/4a5674688345c545b9ed2d28e61e55e64a921276/Picture/Figure%203-3-2%20Age.png)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/4a5674688345c545b9ed2d28e61e55e64a921276/Picture/Figure%203-3-3%20Income.png)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/4a5674688345c545b9ed2d28e61e55e64a921276/Picture/Figure%203-3-4%20State.png)

# Pricing analysis

## Define the ideal price

1) **Warrior Guild:** The ideal price for “Warrior Guild” is 50 as it has the highest revenue 13400, and 87.3% customers are willing to pay based on 307 surveying data . (Figure 4-1-1)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%204-1-1.png)

2) **Evercrest:** The ideal price for “Evercrest” is 60 as it has the highest revenue 13920, and 80.8% customers are willing to pay based on 287 surveying data. (Figure 4-1-2)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%204-1-2.png)

3) **Seraph Guardians:** The ideal price for “Seraph Guardians” is 60 as it has the highest revenue 14640, and 88.4% customers are willing to pay based on 276 surveying data. (Figure 4-1-3)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%204-1-3.png)

## Use linear regression to predict segment

1) **Warrior Guild:** as the p-value < 0.05, the whole model is significant. The segment that is most interested in “Warrior Guild” is Ninja, and the least interesting is Acrobat (base). (Figure 4-2-1)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%204-2-1.png)

2) **Evercrest:** as the p-value < 0.05, the whole model is significant. The segment that is most interested in “Evercrest” is Architect, and the least interesting is Bounty Hunter (base). (Figure 4-2-2)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%204-2-2.png)

3) **Seraph Guardians:** as the p-value < 0.05, the whole model is significant. The segment that is most interested in “Seraph Guardians” is Architect, and the least interesting is Bard (base). (Figure 4-2-3)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%204-2-3.png)

## Predict the revenue
Note: Assume that only 30% of respondents who indicated they would either “definitely” or “probably” purchase at a given price will actually do so within the first year. Also assume that the survey sample was representative of the approximately 10 million active Steam customers who have expressed interests in similar types of games.

**Assumption:**  
- Here, we assume Athene will sell the game with the price that can maximize the revenue. (Other options can be seen in Appendix)  

As we can see from Figure 4-3, the gross revenue for Warrior Guild is 130.95, for Evercrest is 145.44, and for Seraph Guardians is 159.12. The net revenue for Warrior Guild is 83.21, for Evercrest is 93.08, and for Seraph Guardians is 103.84.

![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%204-3.png)

# Recommendations
**Assumptions:**  
- Without Athena’s financial statement, we can assume _Athena has a good financial condition_ as it is considering acquiring new games.  
- Based on SuperData’s study (See in Q2 b.), the prediction for PC premium game’s market size in 2020 slightly increases by 2% without considering the COVID-19’s influence. Here, we can assume _the market potential is neutral_.  

Based on the above analysis, all three games achieved profit in the first year. Therefore, Athena can decide how much to buy based on its financial performance. However, if Athena only considers acquiring one game, I would recommend “Seraph Guardians” as it has the highest forecasted net revenue over others (See Figure 5-1), and the maximent net revenue is $103.44M with the price at $60 per account.

If Athena considers maximizing the first year profit, it can sell the game at $60 per account. However, if Athena is thinking of using a low-price strategy to attract new customers, it could go for $30-$60 per account, since all of these prices are above the breakeven price (Figure 5-2). Adopting a price that is higher than the market price might not be reasonable as the market is not a niche.

Based on the performance of responses, “Seraph Guardians” should target “Architect” who value mastery and achievement. There is no significant correlation between demographic characteristics and “Architect”, we can assume this segment’s characteristics are aligned with the platform (survey samples), so here I’d like to use the average as the representatives. Specifically, this game attracts more males (64%) than females (36%), their age is around 33 years old with about $54274.71 income. These customers are located more in the South (39.4%) and Midwest (20.5%), than Northeast (15.2%), Pacific (17.2%) and West (7.7%) (Table 2 in Q3-c).

![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%205-1.png)
![Image text](https://github.com/XinluLiu1/Acquisition-and-Pricing-Analysis/blob/3e365f746cd990363328a50dd85ae37431df61e6/Picture/Figure%205-2.png)
