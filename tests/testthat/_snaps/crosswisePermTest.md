# crosswisePermTest: different randomization functions

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = FALSE, genome = AlienGenome, per.chromosome = TRUE, ranFUN = "resampleGenome",
        evFUN = "numOverlaps", ntimes = 10, mc.cores = 2)
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "FALSE"
      
      $fraction
      [1] "0.15"
      
      $min_sampling
      [1] "0.15"
      
      $ranFUN
      [1] "resampleGenome"
      
      $evFUN
      [1] "numOverlaps"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100 142.1613 0.09090909        100
      2        2  regB       100       100   0.1355 0.72727273          1
      3        3 regAB       100       100  97.9865 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.6    0.6992059    14.21613      0.1364
      2            0.9    0.7378648     0.01355      0.7273
      3            0.4    0.5163978     9.79865      0.1364
      
      $regB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100   1.1619 0.45454545          1
      2        2  regB       100       100 140.7142 0.09090909        100
      3        3 regAB       100       100  59.7670 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.4    0.5163978     0.11619      0.4545
      2            0.5    0.7071068    14.07142      0.1364
      3            0.6    0.8432740     5.97670      0.1364
      
      $regAB
        order.id  name n_regionA n_regionB z_score    p_value n_overlaps
      1        1  regA       100       100 74.5242 0.09090909         51
      2        2  regB       100       100 78.7407 0.09090909         51
      3        3 regAB       100       100 79.9656 0.09090909        102
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.7    0.6749486     7.45242      0.0909
      2            1.2    0.6324555     7.87407      0.0909
      3            0.5    1.2692955     7.99656      0.0909
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

---

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = FALSE, genome = AlienGenome, ranFUN = "resampleRegions", evFUN = "numOverlaps",
        ntimes = 10, mc.cores = 2)
    Warning <simpleWarning>
      resampleRegions function need that 'universe' is not NULL, universe was created using all the regions present in Alist
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "FALSE"
      
      $fraction
      [1] "0.15"
      
      $min_sampling
      [1] "0.15"
      
      $ranFUN
      [1] "resampleRegions"
      
      $evFUN
      [1] "numOverlaps"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB z_score    p_value n_overlaps
      1        1  regA       100       100 10.0159 0.09090909        100
      2        2  regB       100       100 -9.8730 0.09090909          1
      3        3 regAB       100       100 -0.2914 0.45454545         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1           48.7     5.121849     1.00159      0.1364
      2           51.6     5.125102    -0.98730      0.1364
      3           52.0     3.431877    -0.02914      0.4545
      
      $regB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100 -13.5035 0.09090909          1
      2        2  regB       100       100  13.9173 0.09090909        100
      3        3 regAB       100       100  -0.1975 0.54545455         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1           50.9     3.695342    -1.35035      0.1364
      2           49.5     3.628590     1.39173      0.1364
      3           51.8     4.049691    -0.01975      0.5455
      
      $regAB
        order.id  name n_regionA n_regionB z_score    p_value n_overlaps
      1        1  regA       100       100  0.4248 0.45454545         51
      2        2  regB       100       100 -0.0992 0.45454545         51
      3        3 regAB       100       100 23.3125 0.09090909        102
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1           49.2     4.237400     0.04248      0.4545
      2           51.4     4.033196    -0.00992      0.4545
      3           51.4     2.170509     2.33125      0.2727
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

---

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = TRUE, genome = AlienGenome, ranFUN = "randomizeRegions", evFUN = "numOverlaps",
        ntimes = 10, mc.cores = 2)
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "TRUE"
      
      $fraction
      [1] "0.15"
      
      $min_sampling
      [1] "0.15"
      
      $ranFUN
      [1] "randomizeRegions"
      
      $evFUN
      [1] "numOverlaps"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100 206.3986 0.09090909        100
      2        2  regB       100       100   1.8974 0.27272727          1
      3        3 regAB       100       100 104.9590 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.3    0.4830459    20.63986      0.1364
      2            0.2    0.4216370     0.18974      0.2727
      3            0.3    0.4830459    10.49590      0.1364
      
      $regB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100   0.4445 0.63636364          1
      2        2  regB       100       100 102.3847 0.09090909        100
      3        3 regAB       100       100  95.8170 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.7    0.6749486     0.04445      0.6364
      2            0.5    0.9718253    10.23847      0.1364
      3            0.5    0.5270463     9.58170      0.1364
      
      $regAB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100  53.0330 0.09090909         51
      2        2  regB       100       100  52.1690 0.09090909         51
      3        3 regAB       100       100 101.6664 0.09090909        102
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            1.0    0.9428090     5.30330      0.0909
      2            0.6    0.9660918     5.21690      0.0909
      3            0.9    0.9944289    10.16664      0.0909
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

---

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = TRUE, genome = AlienGenome, ranFUN = "circularRandomizeRegions",
        evFUN = "numOverlaps", ntimes = 10, mc.cores = 2)
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "TRUE"
      
      $fraction
      [1] "0.15"
      
      $min_sampling
      [1] "0.15"
      
      $ranFUN
      [1] "circularRandomizeRegions"
      
      $evFUN
      [1] "numOverlaps"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB z_score    p_value n_overlaps
      1        1  regA       100       100 68.9587 0.09090909        100
      2        2  regB       100       100  0.7071 0.45454545          1
      3        3 regAB       100       100 43.3013 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            1.4    1.4298407     6.89587      0.1364
      2            0.5    0.7071068     0.07071      0.4545
      3            1.0    1.1547005     4.33013      0.1364
      
      $regB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100   0.7071 0.45454545          1
      2        2  regB       100       100 104.6714 0.09090909        100
      3        3 regAB       100       100  72.3678 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.5    0.7071068     0.07071      0.4545
      2            0.7    0.9486833    10.46714      0.1364
      3            0.4    0.6992059     7.23678      0.1364
      
      $regAB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100  75.1168 0.09090909         51
      2        2  regB       100       100 120.4828 0.09090909         51
      3        3 regAB       100       100 145.3077 0.09090909        102
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.3    0.6749486     7.51168      0.0909
      2            0.2    0.4216370    12.04828      0.0909
      3            0.4    0.6992059    14.53077      0.0909
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

# crosswisePermTest: different evaluation functions

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = FALSE, genome = AlienGenome, per.chromosome = TRUE, ranFUN = "circularRandomizeRegions",
        evFUN = "numOverlaps", ntimes = 10, mc.cores = 2)
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "FALSE"
      
      $fraction
      [1] "0.15"
      
      $min_sampling
      [1] "0.15"
      
      $ranFUN
      [1] "circularRandomizeRegions"
      
      $evFUN
      [1] "numOverlaps"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100 147.1223 0.09090909        100
      2        2  regB       100       100   0.4445 0.63636364          1
      3        3 regAB       100       100  72.0818 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.7    0.6749486    14.71223      0.1364
      2            0.7    0.6749486     0.04445      0.6364
      3            0.6    0.6992059     7.20818      0.1364
      
      $regB
        order.id  name n_regionA n_regionB z_score    p_value n_overlaps
      1        1  regA       100       100  0.7071 0.45454545          1
      2        2  regB       100       100 90.0496 0.09090909        100
      3        3 regAB       100       100 47.4820 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.5    0.7071068     0.07071      0.4545
      2            0.9    1.1005049     9.00496      0.1364
      3            0.7    1.0593499     4.74820      0.1364
      
      $regAB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100  46.8851 0.09090909         51
      2        2  regB       100       100  63.6401 0.09090909         51
      3        3 regAB       100       100 106.7796 0.09090909        102
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.6    1.0749677     4.68851      0.0909
      2            0.8    0.7888106     6.36401      0.0909
      3            0.7    0.9486833    10.67796      0.0909
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

---

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = FALSE, genome = AlienGenome, ranFUN = "circularRandomizeRegions",
        evFUN = "meanDistance", ntimes = 10, mc.cores = 2)
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "FALSE"
      
      $fraction
      [1] "0.15"
      
      $min_sampling
      [1] "0.15"
      
      $ranFUN
      [1] "circularRandomizeRegions"
      
      $evFUN
      [1] "meanDistance"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100 -12.3581 0.09090909       0.00
      2        2  regB       100       100  -1.4163 0.18181818   17277.30
      3        3 regAB       100       100  -6.7400 0.09090909    8437.48
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1       16444.66     1330.675    -1.23581      0.1364
      2       21025.48     2646.449    -0.14163      0.1818
      3       16145.46     1143.609    -0.67400      0.1364
      
      $regB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100  -0.4496 0.45454545   17674.54
      2        2  regB       100       100 -15.3156 0.09090909       0.00
      3        3 regAB       100       100  -6.7996 0.09090909    9355.01
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1       18243.88     1266.461    -0.04496      0.4545
      2       19879.67     1298.001    -1.53156      0.1364
      3       18539.53     1350.739    -0.67996      0.1364
      
      $regAB
        order.id  name n_regionA n_regionB z_score    p_value n_overlaps
      1        1  regA       100       100 -3.9950 0.09090909    8452.50
      2        2  regB       100       100 -3.6587 0.09090909    9403.62
      3        3 regAB       100       100 -5.0762 0.09090909       0.00
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1       17157.04     2178.879    -0.39950      0.0909
      2       19213.99     2681.367    -0.36587      0.0909
      3       17259.11     3400.036    -0.50762      0.0909
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

# crosswisePermTest: resampling and fraction

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = TRUE, fraction = 0.25, genome = AlienGenome, per.chromosome = TRUE,
        ranFUN = "resampleGenome", evFUN = "numOverlaps", ntimes = 10, mc.cores = 2)
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "TRUE"
      
      $fraction
      [1] "0.25"
      
      $min_sampling
      [1] "0.25"
      
      $ranFUN
      [1] "resampleGenome"
      
      $evFUN
      [1] "numOverlaps"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100 142.1613 0.09090909        100
      2        2  regB       100       100   0.1355 0.72727273          1
      3        3 regAB       100       100  97.9865 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.6    0.6992059    14.21613      0.1364
      2            0.9    0.7378648     0.01355      0.7273
      3            0.4    0.5163978     9.79865      0.1364
      
      $regB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100   1.1619 0.45454545          1
      2        2  regB       100       100 140.7142 0.09090909        100
      3        3 regAB       100       100  59.7670 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.4    0.5163978     0.11619      0.4545
      2            0.5    0.7071068    14.07142      0.1364
      3            0.6    0.8432740     5.97670      0.1364
      
      $regAB
        order.id  name n_regionA n_regionB z_score    p_value n_overlaps
      1        1  regA       100       100 74.5242 0.09090909         51
      2        2  regB       100       100 78.7407 0.09090909         51
      3        3 regAB       100       100 79.9656 0.09090909        102
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.7    0.6749486     7.45242      0.0909
      2            1.2    0.6324555     7.87407      0.0909
      3            0.5    1.2692955     7.99656      0.0909
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

---

    Code
      crosswisePermTest(Alist = AlienRSList_narrow_small, Blist = AlienRSList_narrow_small,
        sampling = TRUE, fraction = 0.5, genome = AlienGenome, per.chromosome = TRUE,
        ranFUN = "resampleGenome", evFUN = "numOverlaps", ntimes = 10, mc.cores = 2)
    Output
      [1] "Performing permutation tests for regA (1 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regB (2 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      [1] "Performing permutation tests for regAB (3 of 3)"
      [1] "Note: The minimum p-value with only 10 permutations is 0.0909090909090909. You should consider increasing the number of permutations."
      An object of class "genoMatriXeR"
      Slot "parameters":
      $Alist
      [1] "AlienRSList_narrow_small"
      
      $Blist
      [1] "AlienRSList_narrow_small"
      
      $sampling
      [1] "TRUE"
      
      $fraction
      [1] "0.5"
      
      $min_sampling
      [1] "0.5"
      
      $ranFUN
      [1] "resampleGenome"
      
      $evFUN
      [1] "numOverlaps"
      
      $ntimes
      [1] 10
      
      $universe
      NULL
      
      $adj_pv_method
      [1] "BH"
      
      $nc
      NULL
      
      $matOrder
      NULL
      
      $errors
      NULL
      
      
      Slot "multiOverlaps":
      $regA
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100 192.8746 0.09090909        100
      2        2  regB       100       100   0.3644 0.54545455          1
      3        3 regAB       100       100  74.5242 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.4    0.5163978    19.28746      0.1364
      2            0.7    0.8232726     0.03644      0.5455
      3            0.7    0.6749486     7.45242      0.1364
      
      $regB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100   0.1006 0.63636364          1
      2        2  regB       100       100 192.4873 0.09090909        100
      3        3 regAB       100       100  74.5242 0.09090909         51
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            0.9    0.9944289     0.01006      0.6364
      2            0.6    0.5163978    19.24873      0.1364
      3            0.7    0.6749486     7.45242      0.1364
      
      $regAB
        order.id  name n_regionA n_regionB  z_score    p_value n_overlaps
      1        1  regA       100       100  53.0330 0.09090909         51
      2        2  regB       100       100  72.0818 0.09090909         51
      3        3 regAB       100       100 137.0170 0.09090909        102
        mean_perm_test sd_perm_test norm_zscore adj.p_value
      1            1.0    0.9428090     5.30330      0.0909
      2            0.6    0.6992059     7.20818      0.0909
      3            0.9    0.7378648    13.70170      0.0909
      
      
      Slot "matrix":
      [[1]]
      NULL
      
      

