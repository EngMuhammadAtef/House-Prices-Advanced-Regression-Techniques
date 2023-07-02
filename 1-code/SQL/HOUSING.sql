# Show First 10 columns
SELECT * FROM housing.train LIMIT 10;

# Minimum - average - Maximum of house sale price ? [min() - avg() - max()]
SELECT min(SalePrice), avg(SalePrice), max(SalePrice) 
FROM housing.train;

# Average of house sale price for each zone classification ? [group by - order by]
SELECT MSZoning, avg(SalePrice) 
FROM housing.train
group by MSZoning
order by avg(SalePrice);

# if alley exist is important or not by calculating average of house sale price by alley?
SELECT Alley, avg(SalePrice) 
FROM housing.train
group by Alley
order by avg(SalePrice);

# The imortance of quality of the house? 
SELECT OverallQual, avg(SalePrice) 
FROM housing.train
group by OverallQual
order by avg(SalePrice);

# The imortance of condition of the house?
SELECT OverallCond, avg(SalePrice) 
FROM housing.train
group by OverallCond
order by avg(SalePrice);

# comparing average house sale price before 1950 & after 1950 [Self join]
SELECT avg(b.SalePrice) AS AVG_SalePrice_Before1950 , avg(a.SalePrice) AS AVG_SalePrice_After1950
FROM housing.train AS b, housing.train AS a
WHERE b.YearBuilt <= 1950
AND a.YearBuilt > 1950;

# Number_of_Remodel_houses [Where condition]
SELECT count(*) AS Number_of_Remodel_houses
FROM housing.train
WHERE YearBuilt != YearRemodAdd;

# YearSold [Where condition]
SELECT count(*) AS YearSold
FROM housing.train
WHERE YearBuilt = YrSold;



