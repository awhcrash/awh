
% My calories:
y = [1837 2445 1823 680 1385 127 2054 1875 2313 997 1888 1929 2053 1539 4246 692 1410 1259 2223 1850 2254 1740 1084 1564 1785];
% My Burnings calories:
z = [774 1446 2425 3140 1820 3491 1124 2812 378 2012 866 1149 1668 2807 603 3414 2654 1100 1019 990 748 4404 2338 2418 1577];
 







%h = chi2gof(z);
[h,p] = adtest(y);