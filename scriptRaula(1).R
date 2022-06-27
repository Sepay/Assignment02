BiocManager::install("LEA")
BiocManager::install('pcaMethods')

library('LEA')

r = read.geno('~/ASB/ipyrad-assembly/simdata_outfiles/simdata.geno')

vetor = c("Bombus hortorum_1, BHO_067 " , " Bombus hortorum_2, BHO_067  " , " Bombus ruderatus_1, BHO_153 " , " Bombus ruderatus_2, BHO_153  " , " Bombus ruderatus_1, BHO_223 " , " Bombus ruderatus_2, BHO_223  " , " Bombus lapidarius_1, BLA_069 " , " Bombus lapidarius_2, BLA_069  " , " Bombus lapidarius_1, BLA_205 " , " Bombus lapidarius_2, BLA_205  " , " Bombus lapidarius_1, BLA_212 " , " Bombus lapidarius_2, BLA_212  " , " Bombus pascuorum_1, BPA_068 " , " Bombus pascuorum_2, BPA_068  " , " Bombus pascuorum_1, BPA_133 " , " Bombus pascuorum_2, BPA_133  " , " Bombus pascuorum_1, BPA_152 " , " Bombus pascuorum_2, BPA_152  " , " Bombus pascuorum_1, BPA_229 " , " Bombus pascuorum_2, BPA_229  " , " Bombus terrestris_1, BTA_104 " , " Bombus terrestris_2, BTA_104  " , " Bombus terrestris_1, BTA_258 " , " Bombus terrestris_2, BTA_258  " , " Bombus terrestris_1, BTA_262 " , " Bombus terrestris_2, BTA_262  " , " Bombus terrestris_1, BTL_001 " , " Bombus terrestris_2, BTL_001  " , " Bombus terrestris_1, BTL_021 " , " Bombus terrestris_2, BTL_021  " , " Bombus terrestris_1, BTL_037 " , " Bombus terrestris_2, BTL_037  " , " Bombus terrestris_1, BTL_050 " , " Bombus terrestris_2, BTL_050  " , " Bombus terrestris_1, BTL_059 " , " Bombus terrestris_2, BTL_059  " , " Bombus terrestris_1, BTL_061 " , " Bombus terrestris_2, BTL_061  " , " Bombus terrestris_1, BTL_065 " , " Bombus terrestris_2, BTL_065  " , " Bombus terrestris_1, BTL_075 " , " Bombus terrestris_2, BTL_075  " , " Bombus terrestris_1, BTL_078 " , " Bombus terrestris_2, BTL_078  " , " Bombus lucorum_1, BTL_084 " , " Bombus lucorum_2, BTL_084  " , " Bombus terrestris_1, BTL_089 " , " Bombus terrestris_2, BTL_089  " , " Bombus terrestris_1, BTL_090 " , " Bombus terrestris_2, BTL_090  " , " Bombus terrestris_1, BTL_099 " , " Bombus terrestris_2, BTL_099  " , " Bombus lucorum_1, BTL_103 " , " Bombus lucorum_2, BTL_103  " , " Bombus terrestris_1, BTL_110 " , " Bombus terrestris_2, BTL_110  " , " Bombus terrestris_1, BTL_118 " , " Bombus terrestris_2, BTL_118  " , " Bombus terrestris_1, BTL_123 " , " Bombus terrestris_2, BTL_123  " , " Bombus terrestris_1, BTL_125 " , " Bombus terrestris_2, BTL_125  " , " Bombus terrestris_1, BTL_136 " , " Bombus terrestris_2, BTL_136  " , " Bombus terrestris_1, BTL_138 " , " Bombus terrestris_2, BTL_138  " , " Bombus terrestris_1, BTL_141 " , " Bombus terrestris_2, BTL_141  " , " Bombus terrestris_1, BTL_145 " , " Bombus terrestris_2, BTL_145  " , " Bombus lucorum_1, BTL_146 " , " Bombus lucorum_2, BTL_146  " , " Bombus terrestris_1, BTL_150 " , " Bombus terrestris_2, BTL_150  " , " Bombus terrestris_1, BTL_180 " , " Bombus terrestris_2, BTL_180  " , " Bombus terrestris_1, BTL_185 " , " Bombus terrestris_2, BTL_185  " , " Bombus terrestris_1, BTL_197 " , " Bombus terrestris_2, BTL_197  " , " Bombus terrestris_1, BTL_200 " , " Bombus terrestris_2, BTL_200  " , " Bombus terrestris_1, BTL_201 " , " Bombus terrestris_2, BTL_201  " , " Bombus terrestris_1, BTL_203 " , " Bombus terrestris_2, BTL_203  " , " Bombus terrestris_1, BTL_235 " , " Bombus terrestris_2, BTL_235  " , " Bombus terrestris_1, BTL_278 " , " Bombus terrestris_2, BTL_278  " , " Bombus terrestris_1, BTL_288 " , " Bombus terrestris_2, BTL_288  " , " Bombus terrestris_1, BTL_297 " , " Bombus terrestris_2, BTL_297  " , " Bombus terrestris_1, BTL_301 " , " Bombus terrestris_2, BTL_301  " , " Bombus terrestris_1, BTL_306 " , " Bombus terrestris_2, BTL_306  " , " Bombus terrestris_1, BTL_324 " , " Bombus terrestris_2, BTL_324  " , " Bombus terrestris_1, BTL_356 " , " Bombus terrestris_2, BTL_356  " , " Bombus terrestris_1, BTL_357 " , " Bombus terrestris_2, BTL_357  " , " Bombus terrestris_1, BTL_358 " , " Bombus terrestris_2, BTL_358  " , " Bombus terrestris_1, BTX_395 " , " Bombus terrestris_2, BTX_395  " , " Bombus terrestris_1, BT_046 " , " Bombus terrestris_2, BT_046")




rPCA <- prcomp(r, scale = TRUE)
View(rPCA$x)

a = "Bombus terrestris"
b = "Bombus lucorum"
c = "Bombus hortorum"
d = "Bombus ruderatus"
e = "Bombus pascuorum"
f = "Bombus lapidarius"



#v2 = c(c,c,d,d,d,d,f,f,f,f,f,f,e,e,e,e,e,e,e,e,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,b,a,a,a,a,a,a,b,b,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,b,b,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a)
v2 = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,4,4,4,4,5,5,5,5,5,5,5,5,6,6,6,6,6,6)
View(r)


plot(rPCA$x[,1:2], col = v2 ,main="PCA test plot", ellipse = TRUE)
legend("bottomleft", legend = c(a,b,c,d,e,f), pch = 1,
       col = c("black", "red", "green", "pink", "blue", "purple"))


