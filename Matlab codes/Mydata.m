
x = 1:1:25;

% My calories:
y = [1837 2445 1823 680 1385 127 2054 1875 2313 997 1888 1929 2053 1539 4246 692 1410 1259 2223 1850 2254 1740 1084 1564 1785];
% My Burnings calories:
z = [774 1446 2425 3140 1820 3491 1124 2812 378 2012 866 1149 1668 2807 603 3414 2654 1100 1019 990 748 4404 2338 2418 1577];
    

bud = [y-z]




%Bar Graph of my Calories:
bar(x,y);
%Bar Graph of my Burnings Calories:
bar(x,z,'r');


%Bar Graph of my Calories(Top plot):
ax1 = nexttile;
bar(ax1,x,y)
title(ax1,'Eating Calories')
xlabel(ax1,'Days')
ylabel(ax1,'Calories') 
%Bar Graph of my Burnings Calories(Bottom plot):
ax2 = nexttile; 
bar(ax2,x,z,'r')
title(ax2,'Burned Calories')
xlabel(ax2,'Days')
ylabel(ax2,'Calories')

% Mean/Average of my calories:
    M = mean(y);
% Mean/Average of my burnings:
    M2 = mean(z);
% Mean/Average of my calories-burnings:
    M3 = mean(bud);
    


  
    
% Median of my calories:
    MD =  median(y);
 % Median of my burnings:
    MD2 =  median(z);
 % Median of my calories-burnings:
    MD3 = median (bud);
    
    % standard deviation of my calories:
    S = std(y);
    % standard deviation of my burnings:
    S2 = std(z);
    % standard deviation of calories-burnings:
    S3 = std(bud);
    
    % Correlation (coefficient) of y and z:
    % we must set y and b in one matrix together t :
    t = [y,z];
    [R,P] = corrcoef(y,z)
 
 % h = ttest(x) returns a test decision for the null hypothesis that the data in x comes from a normal distribution with mean equal to zero and unknown variance, using the one-sample t-test.
 % The alternative hypothesis is that the population distribution does not have a mean equal to zero. The result h is 1 if the test rejects the null hypothesis at the 5% significance level, and 0 otherwise.
% If h = 1, this indicates the rejection of the null hypothesis at the Alpha significance level.
% If h = 0, this indicates a failure to reject the null hypothesis at the Alpha significance level.
%h = ttest2(y,z) 

% [h,p] = ttest(___) also returns the p-value, p, of the test, using any of the input arguments from the previous syntax groups.
% If the p-value < 0.05 then reject the null hypothesis, 
% the p-value > 0.05 accept the null hypothesis.  
  [h,p] = ttest2(y,z,'Vartype','unequal') 
  
  % [h,p,ci,stats] = ttest(___) also returns the confidence interval ci for the mean of x, or of x ? y for the paired t-test, 
  % and the structure stats containing information about the test statistic.
    %[h,p,ci,stats] = ttest2(y,z)
    
    
    
    