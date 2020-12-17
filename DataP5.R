library(dplyr)
library(RCurl)

#Loading the datasets from github
data <- read.csv(text = getURL("https://raw.githubusercontent.com/MBakster/Statistical-Modelling-and-Analysis/main/owid-covid-data.csv"))
data.Obesity <- read.csv(text = getURL("https://raw.githubusercontent.com/MBakster/Statistical-Modelling-and-Analysis/main/number-of-deaths-by-risk-factor.csv"))
data.ObesityFix <- select(data.Obesity,-c(1,2,3))
data.Asthma <- read.csv(text = getURL("https://raw.githubusercontent.com/MBakster/Statistical-Modelling-and-Analysis/main/asthma-prevalence.csv"))
data.Population17 <- read.csv(text = getURL("https://raw.githubusercontent.com/MBakster/Statistical-Modelling-and-Analysis/main/Data_Extract_FromWorld-Development-Indicators.csv"))
data.generator <- function(){
  data.USA <- cbind(data[53839,],data.Asthma[6104,],data.ObesityFix[6104,]/as.numeric(as.character(data.Population17[207,"X2017"])))
  data.DNK <- cbind(data[14392,],data.Asthma[1596,],data.ObesityFix[1596,]/as.numeric(as.character(data.Population17[54,"X2017"])))
  data.SWE <- cbind(data[49261,],data.Asthma[5572,],data.ObesityFix[5572,]/as.numeric(as.character(data.Population17[188,"X2017"])))
  data.NOR <- cbind(data[38667,],data.Asthma[4284,],data.ObesityFix[4284,]/as.numeric(as.character(data.Population17[148,"X2017"])))
  data.FIN <- cbind(data[18224,],data.Asthma[2044,],data.ObesityFix[2044,]/as.numeric(as.character(data.Population17[68,"X2017"])))
  data.ISL <- cbind(data[23827,],data.Asthma[2660,],data.ObesityFix[2660,]/as.numeric(as.character(data.Population17[89,"X2017"])))
  data.DEU <- cbind(data[19919,],data.Asthma[2184,],data.ObesityFix[2184,]/as.numeric(as.character(data.Population17[74,"X2017"])))
  data.GBR <- cbind(data[53518,],data.Asthma[6076,],data.ObesityFix[6076,]/as.numeric(as.character(data.Population17[206,"X2017"])))
  data.IRL <- cbind(data[25423,],data.Asthma[2800,],data.ObesityFix[2800,]/as.numeric(as.character(data.Population17[94,"X2017"])))
  data.CHE <- cbind(data[49582,],data.Asthma[5600,],data.ObesityFix[5600,]/as.numeric(as.character(data.Population17[189,"X2017"])))
  data.NLD <- cbind(data[36752,],data.Asthma[4004,],data.ObesityFix[4004,]/as.numeric(as.character(data.Population17[140,"X2017"])))
  data.BEL <- cbind(data[5349,],data.Asthma[560,],data.ObesityFix[560,]/as.numeric(as.character(data.Population17[19,"X2017"])))
  data.FRA <- cbind(data[18545,],data.Asthma[2072,],data.ObesityFix[2072,]/as.numeric(as.character(data.Population17[69,"X2017"])))
  data.ITA <- cbind(data[26314,],data.Asthma[2856,],data.ObesityFix[2856,]/as.numeric(as.character(data.Population17[97,"X2017"])))
  data.ESP <- cbind(data[47887,],data.Asthma[5404,],data.ObesityFix[5404,]/as.numeric(as.character(data.Population17[180,"X2017"])))
  data.GRC <- cbind(data[20728,],data.Asthma[2268,],data.ObesityFix[2268,]/as.numeric(as.character(data.Population17[77,"X2017"])))
  data.PRT <- cbind(data[41411,],data.Asthma[4592,],data.ObesityFix[4592,]/as.numeric(as.character(data.Population17[158,"X2017"])))
  data.TUR <- cbind(data[52149,],data.Asthma[5936,],data.ObesityFix[5936,]/as.numeric(as.character(data.Population17[199,"X2017"])))
  data.RUS <- cbind(data[42607,],data.Asthma[4703,],data.ObesityFix[4703,]/as.numeric(as.character(data.Population17[162,"X2017"])))
  data.POL <- cbind(data[41147,],data.Asthma[4564,],data.ObesityFix[4564,]/as.numeric(as.character(data.Population17[157,"X2017"])))
  data.CZE <- cbind(data[13823,],data.Asthma[1540,],data.ObesityFix[1540,]/as.numeric(as.character(data.Population17[53,"X2017"])))
  data.HUN <- cbind(data[23506,],data.Asthma[2632,],data.ObesityFix[2632,]/as.numeric(as.character(data.Population17[88,"X2017"])))
  data.EST <- cbind(data[16883,],data.Asthma[1960,],data.ObesityFix[1960,]/as.numeric(as.character(data.Population17[63,"X2017"])))
  data.LVA <- cbind(data[29192,],data.Asthma[3164,],data.ObesityFix[3164,]/as.numeric(as.character(data.Population17[110,"X2017"])))
  data.LTU <- cbind(data[30771,],data.Asthma[3304,],data.ObesityFix[3304,]/as.numeric(as.character(data.Population17[116,"X2017"])))
  data.AUS <- cbind(data[3002,],data.Asthma[336,],data.ObesityFix[336,]/as.numeric(as.character(data.Population17[11,"X2017"])))
  data.NZL <- cbind(data[37313,],data.Asthma[4032,],data.ObesityFix[4032,]/as.numeric(as.character(data.Population17[142,"X2017"])))
  data.MEX <- cbind(data[33802,],data.Asthma[3696,],data.ObesityFix[3696,]/as.numeric(as.character(data.Population17[128,"X2017"])))
  data.ROU <- cbind(data[42286,],data.Asthma[4676,],data.ObesityFix[4676,]/as.numeric(as.character(data.Population17[161,"X2017"])))
  data.ISR <- cbind(data[25993,],data.Asthma[2828,],data.ObesityFix[2828,]/as.numeric(as.character(data.Population17[96,"X2017"])))
  data.JPN <- cbind(data[26883,],data.Asthma[2912,],data.ObesityFix[2912,]/as.numeric(as.character(data.Population17[99,"X2017"])))
  data.KOR <- cbind(data[47343,],data.Asthma[5236,],data.ObesityFix[5236,]/as.numeric(as.character(data.Population17[105,"X2017"])))
  data.MLT <- cbind(data[32976,],data.Asthma[3584,],data.ObesityFix[3584,]/as.numeric(as.character(data.Population17[124,"X2017"])))
  data.HRV <- cbind(data[12764,],data.Asthma[1456,],data.ObesityFix[1456,]/as.numeric(as.character(data.Population17[49,"X2017"])))
  data.AUT <- cbind(data[3323,],data.Asthma[364,],data.ObesityFix[364,]/as.numeric(as.character(data.Population17[12,"X2017"])))
  data.CHL <- cbind(data[10925,],data.Asthma[1260,],data.ObesityFix[1260,]/as.numeric(as.character(data.Population17[41,"X2017"])))
  data.SVK <- cbind(data[46208,],data.Asthma[5068,],data.ObesityFix[5068,]/as.numeric(as.character(data.Population17[174,"X2017"])))
  data.CAN <- cbind(data[9702,],data.Asthma[980,],data.ObesityFix[980,]/as.numeric(as.character(data.Population17[36,"X2017"])))
  data.BGR <- cbind(data[8333,],data.Asthma[840,],data.ObesityFix[840,]/as.numeric(as.character(data.Population17[30,"X2017"])))
  data.LUX <- cbind(data[31092,],data.Asthma[3388,],data.ObesityFix[3388,]/as.numeric(as.character(data.Population17[117,"X2017"])))
  data.SVN <- cbind(data[46464,],data.Asthma[5096,],data.ObesityFix[5096,]/as.numeric(as.character(data.Population17[175,"X2017"])))
  data.ARG <- cbind(data[2117,],data.Asthma[252,],data.ObesityFix[252,]/as.numeric(as.character(data.Population17[8,"X2017"])))
  data.PHL <- cbind(data[40892,],data.Asthma[4536,],data.ObesityFix[4536,]/as.numeric(as.character(data.Population17[156,"X2017"])))
  data.KAZ <- cbind(data[27626,],data.Asthma[2968,],data.ObesityFix[2968,]/as.numeric(as.character(data.Population17[101,"X2017"])))
  data.KEN <- cbind(data[27881,],data.Asthma[2996,],data.ObesityFix[2996,]/as.numeric(as.character(data.Population17[102,"X2017"])))
  data.CUB <- cbind(data[13010,],data.Asthma[1484,],data.ObesityFix[1484,]/as.numeric(as.character(data.Population17[50,"X2017"])))
  data.ARE <- cbind(data[53197,],data.Asthma[6048,],data.ObesityFix[6048,]/as.numeric(as.character(data.Population17[205,"X2017"])))
  data.GHA <- cbind(data[20166,],data.Asthma[2212,],data.ObesityFix[2212,]/as.numeric(as.character(data.Population17[75,"X2017"])))
  data.ALB <- cbind(data[573,],data.Asthma[56,],data.ObesityFix[56,]/as.numeric(as.character(data.Population17[2,"X2017"])))
  data.DZA <- cbind(data[894,],data.Asthma[84,],data.ObesityFix[84,]/as.numeric(as.character(data.Population17[3,"X2017"])))
  data.AGO <- cbind(data[1383,],data.Asthma[196,],data.ObesityFix[196,]/as.numeric(as.character(data.Population17[6,"X2017"])))
  data.ARM <- cbind(data[2438,],data.Asthma[280,],data.ObesityFix[280,]/as.numeric(as.character(data.Population17[9,"X2017"])))
  data.AZE <- cbind(data[3644,],data.Asthma[392,],data.ObesityFix[392,]/as.numeric(as.character(data.Population17[13,"X2017"])))
  data.BHS <- cbind(data[3887,],data.Asthma[420,],data.ObesityFix[420,]/as.numeric(as.character(data.Population17[14,"X2017"])))
  data.BHR <- cbind(data[4208,],data.Asthma[448,],data.ObesityFix[448,]/as.numeric(as.character(data.Population17[15,"X2017"])))
  data.BGD <- cbind(data[4466,],data.Asthma[476,],data.ObesityFix[476,]/as.numeric(as.character(data.Population17[16,"X2017"])))
  data.BLR <- cbind(data[5030,],data.Asthma[532,],data.ObesityFix[532,]/as.numeric(as.character(data.Population17[18,"X2017"])))
  data.BOL <- cbind(data[6570,],data.Asthma[700,],data.ObesityFix[700,]/as.numeric(as.character(data.Population17[24,"X2017"])))
  data.BRA <- cbind(data[7598,],data.Asthma[784,],data.ObesityFix[784,]/as.numeric(as.character(data.Population17[27,"X2017"])))
  data.CMR <- cbind(data[9381,],data.Asthma[952,],data.ObesityFix[952,]/as.numeric(as.character(data.Population17[35,"X2017"])))
  data.COL <- cbind(data[11500,],data.Asthma[1316,],data.ObesityFix[1316,]/as.numeric(as.character(data.Population17[43,"X2017"])))
  data.CRI <- cbind(data[12196,],data.Asthma[1400,],data.ObesityFix[1400,]/as.numeric(as.character(data.Population17[47,"X2017"])))
  data.COD <- cbind(data[14071,],data.Asthma[1568,],data.ObesityFix[1568,]/as.numeric(as.character(data.Population17[45,"X2017"])))
  data.DOM <- cbind(data[15193,],data.Asthma[1680,],data.ObesityFix[1680,]/as.numeric(as.character(data.Population17[57,"X2017"])))
  data.ECU <- cbind(data[15514,],data.Asthma[1792,],data.ObesityFix[1792,]/as.numeric(as.character(data.Population17[58,"X2017"])))
  data.EGY <- cbind(data[15835,],data.Asthma[1820,],data.ObesityFix[1820,]/as.numeric(as.character(data.Population17[59,"X2017"])))
  data.SLV <- cbind(data[16077,],data.Asthma[1848,],data.ObesityFix[1848,]/as.numeric(as.character(data.Population17[60,"X2017"])))
  data.ETH <- cbind(data[17131,],data.Asthma[1988,],data.ObesityFix[1988,]/as.numeric(as.character(data.Population17[65,"X2017"])))
  data.GEO <- cbind(data[19598,],data.Asthma[2156,],data.ObesityFix[1792,]/as.numeric(as.character(data.Population17[73,"X2017"])))
  data.GTM <- cbind(data[21722,],data.Asthma[2352,],data.ObesityFix[2352,]/as.numeric(as.character(data.Population17[81,"X2017"])))
  data.HND <- cbind(data[23177,],data.Asthma[2604,],data.ObesityFix[2604,]/as.numeric(as.character(data.Population17[86,"X2017"])))
  data.IND <- cbind(data[24148,],data.Asthma[2688,],data.ObesityFix[2688,]/as.numeric(as.character(data.Population17[90,"X2017"])))
  data.IRN <- cbind(data[24790,],data.Asthma[2744,],data.ObesityFix[2744,]/as.numeric(as.character(data.Population17[92,"X2017"])))
  data.IRQ <- cbind(data[25111,],data.Asthma[2772,],data.ObesityFix[2772,]/as.numeric(as.character(data.Population17[93,"X2017"])))
  data.KWT <- cbind(data[28449,],data.Asthma[3052,],data.ObesityFix[1792,]/as.numeric(as.character(data.Population17[107,"X2017"])))
  data.LBN <- cbind(data[29513,],data.Asthma[3192,],data.ObesityFix[1792,]/as.numeric(as.character(data.Population17[111,"X2017"])))
  data.LBY <- cbind(data[30199,],data.Asthma[3276,],data.ObesityFix[3276,]/as.numeric(as.character(data.Population17[114,"X2017"])))
  data.MKD <- cbind(data[31413,],data.Asthma[3416,],data.ObesityFix[3416,]/as.numeric(as.character(data.Population17[146,"X2017"])))
  data.MDV <- cbind(data[32457,],data.Asthma[3528,],data.ObesityFix[3528,]/as.numeric(as.character(data.Population17[122,"X2017"])))
  data.MDA <- cbind(data[34053,],data.Asthma[3780,],data.ObesityFix[3780,]/as.numeric(as.character(data.Population17[130,"X2017"])))
  data.MNE <- cbind(data[34864,],data.Asthma[3836,],data.ObesityFix[3836,]/as.numeric(as.character(data.Population17[133,"X2017"])))
  data.MAR <- cbind(data[35387,],data.Asthma[3864,],data.ObesityFix[3864,]/as.numeric(as.character(data.Population17[134,"X2017"])))
  data.MOZ <- cbind(data[35625,],data.Asthma[3892,],data.ObesityFix[3892,]/as.numeric(as.character(data.Population17[135,"X2017"])))
  data.MMR <- cbind(data[35864,],data.Asthma[3920,],data.ObesityFix[3920,]/as.numeric(as.character(data.Population17[136,"X2017"])))
  data.NPL <- cbind(data[36431,],data.Asthma[3976,],data.ObesityFix[3976,]/as.numeric(as.character(data.Population17[139,"X2017"])))
  data.NGA <- cbind(data[38116,],data.Asthma[4116,],data.ObesityFix[4116,]/as.numeric(as.character(data.Population17[145,"X2017"])))
  data.OMN <- cbind(data[38988,],data.Asthma[4340,],data.ObesityFix[4340,]/as.numeric(as.character(data.Population17[149,"X2017"])))
  data.PAK <- cbind(data[39309,],data.Asthma[4368,],data.ObesityFix[4368,]/as.numeric(as.character(data.Population17[150,"X2017"])))
  data.PAN <- cbind(data[39815,],data.Asthma[4424,],data.ObesityFix[4424,]/as.numeric(as.character(data.Population17[152,"X2017"])))
  data.PRY <- cbind(data[40309,],data.Asthma[4480,],data.ObesityFix[4480,]/as.numeric(as.character(data.Population17[154,"X2017"])))
  data.PER <- cbind(data[40571,],data.Asthma[4508,],data.ObesityFix[4508,]/as.numeric(as.character(data.Population17[155,"X2017"])))
  data.PRI <- cbind(data[41644,],data.Asthma[4620,],data.ObesityFix[4620,]/as.numeric(as.character(data.Population17[159,"X2017"])))
  data.QAT <- cbind(data[41965,],data.Asthma[4648,],data.ObesityFix[4648,]/as.numeric(as.character(data.Population17[160,"X2017"])))
  data.SAU <- cbind(data[44378,],data.Asthma[4872,],data.ObesityFix[4872,]/as.numeric(as.character(data.Population17[167,"X2017"])))
  data.SRB <- cbind(data[44904,],data.Asthma[4956,],data.ObesityFix[4956,]/as.numeric(as.character(data.Population17[169,"X2017"])))
  data.SGP <- cbind(data[45700,],data.Asthma[5040,],data.ObesityFix[5040,]/as.numeric(as.character(data.Population17[172,"X2017"])))
  data.ZAF <- cbind(data[47022,],data.Asthma[5180,],data.ObesityFix[5180,]/as.numeric(as.character(data.Population17[178,"X2017"])))
  data.LKA <- cbind(data[48208,],data.Asthma[5432,],data.ObesityFix[5432,]/as.numeric(as.character(data.Population17[181,"X2017"])))
  data.TJK <- cbind(data[50340,],data.Asthma[5684,],data.ObesityFix[5684,]/as.numeric(as.character(data.Population17[191,"X2017"])))
  data.UZB <- cbind(data[54567,],data.Asthma[6188,],data.ObesityFix[6188,]/as.numeric(as.character(data.Population17[209,"X2017"])))
  data.VEN <- cbind(data[55067,],data.Asthma[6244,],data.ObesityFix[6244,]/as.numeric(as.character(data.Population17[211,"X2017"])))
  data.YEM <- cbind(data[55842,],data.Asthma[6412,],data.ObesityFix[6412,]/as.numeric(as.character(data.Population17[215,"X2017"])))
  data.ZWE <- cbind(data[56324,],data.Asthma[6468,],data.ObesityFix[6468,]/as.numeric(as.character(data.Population17[217,"X2017"])))
  
  all_countries <- rbind(data.USA,data.DNK,data.SWE,data.NOR,data.FIN,data.ISL,data.DEU,data.GBR,data.IRL,data.CHE,data.NLD,data.BEL,
                         data.FRA,data.ITA,data.ESP,data.GRC,data.PRT,data.TUR,data.RUS,data.POL,data.CZE,data.HUN,data.EST,data.LVA,
                         data.LTU,data.AUS,data.NZL,data.MEX,data.ROU,data.ISR,data.HRV,data.CHL,data.SVK,data.CAN,
                         data.SVN,data.JPN,data.KOR,data.ARG,data.PHL,data.KAZ,data.KEN,data.CUB,data.ARE,data.GHA,data.ALB,data.DZA,
                         data.AGO,data.ARM,data.AZE,data.BHS,data.BHR,data.BGD,data.BLR,data.BOL,data.BRA,data.BGR,data.CMR,data.COL,
                         data.CRI,data.COD,data.DOM,data.ECU,data.EGY,data.SLV,data.ETH,data.GEO,data.GTM,data.HND,data.IND,
                         data.IRN,data.IRQ,data.KWT,data.LBN,data.LBY,data.MKD,data.MDV,data.MLT,data.MDA,data.MNE,data.MAR,data.MOZ,
                         data.MMR,data.NPL,data.NGA,data.OMN,data.PAK,data.PAN,data.PRY,data.PER,data.PRI,data.QAT,data.SAU,data.SRB,
                         data.SGP,data.ZAF,data.LKA,data.TJK,data.UZB,data.VEN,data.YEM,data.ZWE)
  return(all_countries)
}


#Backwards selection algorithm
#First a help function to find the model with the intercept.
model_function_backward <- function(x,y){
  k <- ncol(x)
  if(k==1){
    model <- lm(y[,"total_deaths_per_million"]~x[,1])
  } else if(k==2){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2])
  } else if(k==3){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3])
  } else if(k==4){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4])
  } else if(k==5){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5])
  } else if(k==6){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6])
  } else if(k==7){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7])
  } else if(k==8){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8])
  } else if(k==9){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9])
  } else if(k==10){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10])
  } else if(k==11){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11])
  } else if(k==12){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12])
  } else if(k==13){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13])
  } else if(k==14){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14])
  } else if(k==15){
    model <- lm(y[,"total_deaths_per_million"]~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14]+x[,15])
  }
  return(model)
}
#Another help function, this time with no constant
model_function_backward_no_constant <- function(x,y){
  k <- ncol(x)
  if(k==1){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1])
  } else if(k==2){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2])
  } else if(k==3){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3])
  } else if(k==4){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4])
  } else if(k==5){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5])
  } else if(k==6){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6])
  } else if(k==7){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7])
  } else if(k==8){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8])
  } else if(k==9){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9])
  } else if(k==10){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10])
  } else if(k==11){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11])
  } else if(k==12){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12])
  } else if(k==13){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13])
  } else if(k==14){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14])
  } else if(k==15){
    model <- lm(y[,"total_deaths_per_million"]~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14]+x[,15])
  }
  return(model)
}
#Another help function, this time with log of total deaths per mil and constant
model_function_log <- function(x,y,k){
  if(k==1){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1])
  } else if(k==2){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2])
  } else if(k==3){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3])
  } else if(k==4){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4])
  } else if(k==5){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5])
  } else if(k==6){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6])
  } else if(k==7){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7])
  } else if(k==8){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8])
  } else if(k==9){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9])
  } else if(k==10){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10])
  } else if(k==11){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11])
  } else if(k==12){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12])
  } else if(k==13){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13])
  } else if(k==14){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14])
  } else if(k==15){
    model <- lm(log(y[,"total_deaths_per_million"])~x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14]+x[,15])
  }
  return(model)
}
#Another help function, this time with log of total deaths per mil and no constant
model_function_log_no_constant <- function(x,y,k){
  if(k==1){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1])
  } else if(k==2){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2])
  } else if(k==3){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3])
  } else if(k==4){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4])
  } else if(k==5){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5])
  } else if(k==6){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6])
  } else if(k==7){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7])
  } else if(k==8){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8])
  } else if(k==9){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9])
  } else if(k==10){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10])
  } else if(k==11){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11])
  } else if(k==12){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12])
  } else if(k==13){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13])
  } else if(k==14){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14])
  } else if(k==15){
    model <- lm(log(y[,"total_deaths_per_million"])~0+x[,1]+x[,2]+x[,3]+x[,4]+x[,5]+x[,6]+x[,7]+x[,8]+x[,9]+x[,10]+x[,11]+x[,12]+x[,13]+x[,14]+x[,15])
  }
  return(model)
}

#As there is 4 different model help functions, we create a last help function, to figure out which one to use.
model_function_log_or_no <- function(sig_par,all_countries,k,log_cond,constant){
  if(log_cond & !constant){
    model <- model_function_log(sig_par,all_countries,k)
  }
  else if(!log_cond & !constant){
    model <- model_function_backward(sig_par,all_countries)
  }
  else if(log_cond & constant){
    model <- model_function_log_no_constant(sig_par,all_countries,k)
  }
  else if(!log_cond & constant){
    model <- model_function_backward_no_constant(sig_par,all_countries)
  }
  return(model)
}

#Main function to find model for backwards
#Three inputs. The first is the parameters we want to look at. The second is matrix with all the countries and parameters
#And the last input is if we want to take log of the total deaths per million in the model.
significant_parameters_function_backwards <- function(x,y,log_cond){
  all_countries <- y
  sig_par <- x
  cond <- T
  while(cond){
    cond <- F
    worst_sig <- 0.05
    model <- model_function_log_or_no(sig_par,all_countries,length(sig_par),log_cond,F)
    for(j in 1:ncol(sig_par)){
      if(coefficients(summary(model))[j+1,"Pr(>|t|)"]>worst_sig){
        worst_sig <- coefficients(summary(model))[j+1,"Pr(>|t|)"]
        loc_sig_par <- j
        cond <- T
      }
    }
    if(cond){
      sig_par <- sig_par[,-loc_sig_par]
    }
  }
  if(coefficients(summary(model))["(Intercept)","Pr(>|t|)"]>0.05){
    cond <- T
    while(cond){
      cond <- F
      worst_sig <- 0.05
      for(j in 1:ncol(sig_par)){
        model <- model_function_log_or_no(sig_par,all_countries,length(sig_par),log_cond,T)
        if(coefficients(summary(model))[j,"Pr(>|t|)"]>worst_sig){
          worst_sig <- coefficients(summary(model))[j,"Pr(>|t|)"]
          loc_sig_par <- j
          cond <- T
        }
      }
      if(cond){
        sig_par <- sig_par[,-loc_sig_par]
      }
    }
    model <- coefficients(summary(model_function_log_or_no(sig_par,all_countries,length(sig_par),log_cond,T)))
    names <- numeric(ncol(sig_par))
    for(i in 1:ncol(sig_par)){
      names[i] <- colnames(sig_par[i])
    }
    rownames(model) <- names
  } else {
    model <- coefficients(summary(model_function_log_or_no(sig_par,all_countries,length(sig_par),log_cond,F)))
    names <- c("(Intercept)",numeric(ncol(sig_par)))
    for(i in 1:ncol(sig_par)){
      names[i+1] <- colnames(sig_par[i]) 
    }
    rownames(model) <- names
  }
  return(model)
}

#Model 1.1 (Just for the parameters)
all_countries <- data_generator()
all_countries_parameters_of_interest <- select(all_countries,c(37,38,39,40,41,42,43,44,45,46,48,49,50,54,80))
model <- lm(all_countries[,"total_deaths_per_million"] ~ all_countries[,37]+all_countries[,38]+all_countries[,39]+all_countries[,40]
            +all_countries[,41]+all_countries[,42]+all_countries[,43]+all_countries[,44]+all_countries[,45]+all_countries[,46]+
              all_countries[,48]+all_countries[,49]+all_countries[,50]+all_countries[,54]+all_countries[,80])
print(coefficients(summary(model)))
summary(model)$r.squared
summary(model)$adj.r.squared

#Model 1.2
all_countries <- data_generator()
all_countries_parameters_of_interest <- select(all_countries,c(37,38,39,40,41,42,43,44,45,46,48,49,50,54,80))
significant_parameters_function_backwards(all_countries_parameters_of_interest,all_countries,F)
model <- lm(all_countries[,"total_deaths_per_million"] ~ 0+all_countries[,"gdp_per_capita"] + all_countries[,"cardiovasc_death_rate"] + all_countries[,"human_development_index"])
print(coefficients(summary(model)))
summary(model)$r.squared
summary(model)$adj.r.squared
plot(model)




#Model 1.3 We see the trumpet shape and do the code again with log equal to T
all_countries <- data_generator()
all_countries_parameters_of_interest <- select(all_countries,c(37,38,39,40,41,42,43,44,45,46,48,49,50,54,80))
significant_parameters_function_backwards(all_countries_parameters_of_interest,all_countries,T)
model <- lm(log(all_countries[,"total_deaths_per_million"]) ~ 0+all_countries[,"gdp_per_capita"] + all_countries[,"hospital_beds_per_thousand"] + all_countries[,"human_development_index"]+all_countries[,"Deaths...High.body.mass.index...Sex..Both...Age..All.Ages..Number."] )
print(coefficients(summary(model)))
summary(model)$r.squared
summary(model)$adj.r.squared
plot(model)

#Plot of Cooks D
plot(model, pch=18, col="red", which=c(4))


#Finding out how many data points fits within the prediction interval for model 1.3
pred_int <- predict(model,interval = "prediction")
in_pred_int <- sum(log(all_countries[,"total_deaths_per_million"]) >= pred_int[,2] &
                     log(all_countries[,"total_deaths_per_million"]) <= pred_int[,3]);in_pred_int
in_pred_int/nrow(pred_int)

#Making a graph with confidence interval and prediction interval
all_countries_ef <- all_countries

pred_int_ef <- predict(model,interval = "prediction")
all_countries_ef <- all_countries_ef[order(pred_int_ef[,1]),];
pred_int_ef <- pred_int_ef[order(pred_int_ef[,1]),]

conf_int_ef <- predict(model,interval = "confidence")
conf_int_ef <- conf_int_ef[order(conf_int_ef[,1]),]

plot(log(all_countries_ef[,"total_deaths_per_million"]), ylab=" Log of total deaths per million",xlim=c(0, nrow(all_countries_ef)),ylim=c(0, 10))
lines(1:nrow(all_countries_ef), pred_int_ef[,1],
      col = "green", lwd = 2)
lines(1:nrow(all_countries_ef), pred_int_ef[,2],
      col = "dodgerblue3", lwd = 2)
lines(1:nrow(all_countries_ef), pred_int_ef[,3],
      col = "dodgerblue3", lwd = 2)
lines(1:nrow(all_countries_ef), conf_int_ef[,2],
      col = "darkorange2", lwd = 2)
lines(1:nrow(all_countries_ef), conf_int_ef[,3],
      col = "darkorange2", lwd = 2)

#A function to check for NA's. It returns the countries index and the parameters.
which_have_na <- function(par_to_investigate){
  all_countries <- data_generator()
  par_in_model <- select(all_countries,par_to_investigate)
  no_country <- rep(0,nrow(all_countries_parameters_of_interest))
  no_parameter <- rep(0,ncol(all_countries_parameters_of_interest))
  k <- 1
  for(i in 1:nrow(par_in_model)){
    for(j in 1:ncol(par_in_model)){
      if(is.na(par_in_model[i,j])){
        no_country[k] <- i
        no_parameter[k] <- j
        k <- k+1
      }
    }
  }
  no_country <- no_country[no_country!=0]
  no_parameter <- no_parameter[no_parameter!=0]
  for(i in 1:length(no_parameter)){
    no_parameter[i] <- par_to_investigate[no_parameter[i]]
  }
  print(no_country)
  print(no_parameter)
}
which_have_na(c(37,38,39,40,41,43,44,45,46,48,49,50,54,80))


#Model 1.4
all_countries <- data_generator()[-c(42,47,60,76,84,90),]
all_countries_parameters_of_interest <- select(all_countries,c(37,38,39,40,41,42,43,44,45,46,48,49,50,54,80))
significant_parameters_function_backwards(all_countries_parameters_of_interest,all_countries,T)

model <- lm(log(all_countries[,"total_deaths_per_million"]) ~ 0+all_countries[,"gdp_per_capita"] + all_countries[,"hospital_beds_per_thousand"] + all_countries[,"human_development_index"]+all_countries[,"Deaths...High.body.mass.index...Sex..Both...Age..All.Ages..Number."] )
print(coefficients(summary(model)))
summary(model)$r.squared
summary(model)$adj.r.squared
plot(model)

#Just to see that fewer more points are within the prediction interval, we find the percentage again and make the graph
pred_int <- predict(model,interval = "prediction"); pred_int
in_pred_int <- sum(log(all_countries[,"total_deaths_per_million"]) >= pred_int[,2] &
                     log(all_countries[,"total_deaths_per_million"]) <= pred_int[,3]);in_pred_int
in_pred_int/nrow(pred_int)

#Down here trying to make that sweet graph. Model 1.4
all_countries_ef <- all_countries

pred_int_ef <- predict(model,interval = "prediction")
all_countries_ef <- all_countries_ef[order(pred_int_ef[,1]),]
pred_int_ef <- pred_int_ef[order(pred_int_ef[,1]),]

conf_int_ef <- predict(model,interval = "confidence")
conf_int_ef <- conf_int_ef[order(conf_int_ef[,1]),]

plot(log(all_countries_ef[,"total_deaths_per_million"]), ylab=" Log of total deaths per million",xlim=c(0, nrow(all_countries_ef)),ylim=c(0, 10))
lines(1:nrow(all_countries_ef), pred_int_ef[,1],
      col = "green", lwd = 2)
lines(1:nrow(all_countries_ef), pred_int_ef[,2],
      col = "dodgerblue3", lwd = 2)
lines(1:nrow(all_countries_ef), pred_int_ef[,3],
      col = "dodgerblue3", lwd = 2)
lines(1:nrow(all_countries_ef), conf_int_ef[,2],
      col = "darkorange2", lwd = 2)
lines(1:nrow(all_countries_ef), conf_int_ef[,3],
      col = "darkorange2", lwd = 2)


#------------------------------------------------------
#A help function for forward selection. Creates a model.
model_function_forward_no_log <- function(x,k,i,sig_par_total){
  if(k==0){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,i])
  } else if(k==1){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total]+x[,i])
  } else if(k==2){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,i])
  } else if(k==3){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]+x[,i])
  } else if(k==4){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,i])
  } else if(k==5){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,i])
  } else if(k==6){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,i])
  } else if(k==7){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,i])
  } else if(k==8){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]+x[,i])
  } else if(k==9){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,i])
  } else if(k==10){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,i])
  } else if(k==11){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,sig_par_total[11]]+x[,i])
  } else if(k==12){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,sig_par_total[11]]+x[,sig_par_total[12]]+x[,i])
  } else if(k==13){
    model <- lm(all_countries[,"total_deaths_per_million"]~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,sig_par_total[11]]+x[,sig_par_total[12]]
                +x[,sig_par_total[13]]+x[,i])
  }
  return(model)
}
#Another help function, this time with log o
model_function_forward_log <- function(x,k,i,sig_par_total){
  if(k==0){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,i])
  } else if(k==1){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total]+x[,i])
  } else if(k==2){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,i])
  } else if(k==3){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]+x[,i])
  } else if(k==4){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,i])
  } else if(k==5){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,i])
  } else if(k==6){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,i])
  } else if(k==7){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,i])
  } else if(k==8){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]+x[,i])
  } else if(k==9){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,i])
  } else if(k==10){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,i])
  } else if(k==11){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,sig_par_total[11]]+x[,i])
  } else if(k==12){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,sig_par_total[11]]+x[,sig_par_total[12]]+x[,i])
  } else if(k==13){
    model <- lm(log(all_countries[,"total_deaths_per_million"])~x[,sig_par_total[1]]+x[,sig_par_total[2]]+x[,sig_par_total[3]]
                +x[,sig_par_total[4]]+x[,sig_par_total[5]]+x[,sig_par_total[6]]+x[,sig_par_total[7]]+x[,sig_par_total[8]]
                +x[,sig_par_total[4]]+x[,sig_par_total[9]]+x[,sig_par_total[10]]+x[,sig_par_total[11]]+x[,sig_par_total[12]]
                +x[,sig_par_total[13]]+x[,i])
  }
  return(model)
}
model_function_forward <- function(x,k,i,sig_par_total,log_con){
  if(log_con){
    model <- model_function_forward_log(x,k,i,sig_par_total)
  }
  else{
    model <- model_function_forward_no_log(x,k,i,sig_par_total)
  }
  return(model)
}

#The main algorithm in forward selection
significant_parameters_function_forward <- function(x,log_con){
  k <- 0
  sig_par_int <- numeric(ncol(x))
  loc_sig_par_ite <- 0
  loc_sig_par_ite_conf <- numeric(ncol(x))
  while(length(loc_sig_par_ite)!=0 || k==0){
    for(i in c(1:ncol(x))[!c(1:ncol(x))%in%loc_sig_par_ite_conf]){
      if(coefficients(summary(model_function_forward(x,k,i,loc_sig_par_ite_conf[which(loc_sig_par_ite_conf!=0)],log_con)))[k+2,"Pr(>|t|)"]<0.05){
        sig_par_int[i] <- 1
      } else {
        sig_par_int[i] <- 0
      }
    }
    loc_sig_par_total <- which(sig_par_int==1)
    loc_sig_par_ite <- loc_sig_par_total[!loc_sig_par_total%in%loc_sig_par_ite_conf]
    par_min_pval_cond <- 1
    loc_par_min_pval <- 0
    if(length(loc_sig_par_ite)>1){
      for(j in 1:length(loc_sig_par_ite)){
        if(coefficients(summary(model_function_forward(x,k,loc_sig_par_ite[j],loc_sig_par_ite_conf,log_con)))[k+2,"Pr(>|t|)"]<par_min_pval_cond){
          par_min_pval_cond <- coefficients(summary(model_function_forward(x,k,loc_sig_par_ite[j],loc_sig_par_ite_conf,log_con)))[k+2,"Pr(>|t|)"]
          loc_par_min_pval <- j
        }
      }
      loc_sig_par_ite_conf[k+1] <- loc_sig_par_ite[loc_par_min_pval]
    } else if(length(loc_sig_par_ite)==1){
      loc_sig_par_ite_conf[k+1] <- loc_sig_par_ite
    }
    k <- k+1
  }
  loc_sig_par_ite_conf <- loc_sig_par_ite_conf[loc_sig_par_ite_conf!=0]
  mod <- coefficients(summary(model_function_forward(x,length(loc_sig_par_ite_conf)-1,loc_sig_par_ite_conf[length(loc_sig_par_ite_conf)],loc_sig_par_ite_conf,log_con)))
  names <- c("(Intercept)",length(loc_sig_par_ite_conf))
  for(i in 1:length(loc_sig_par_ite_conf)){
    names[i+1] <- colnames(x[loc_sig_par_ite_conf[i]])
  }
  rownames(mod) <- names
  return(mod)
}

#Model 2.1
all_countries <- data_generator()
all_countries_parameters_of_interest <- select(all_countries,c(37,38,39,40,41,43,44,45,46,48,49,50,54,80))
significant_parameters_function_forward(all_countries_parameters_of_interest,F)
model <- lm(all_countries[,"total_deaths_per_million"] ~ all_countries[,"life_expectancy"] + all_countries[,"cardiovasc_death_rate"] +all_countries[,"gdp_per_capita"] + all_countries[,"human_development_index"])
print(coefficients(summary(model)))
summary(model)$r.squared
summary(model)$adj.r.squared
plot(model)
plot(model, pch=18, col="red", which=c(4))

#Model 2.2
all_countries <- data_generator()
all_countries_parameters_of_interest <- select(all_countries,c(37,38,39,40,41,43,44,45,46,48,49,50,54,80))
significant_parameters_function_forward(all_countries_parameters_of_interest,T)
model <- lm(log(all_countries[,"total_deaths_per_million"]) ~ all_countries[,"life_expectancy"]+
              all_countries[,"population_density"] +
              all_countries[,"Deaths...High.body.mass.index...Sex..Both...Age..All.Ages..Number."]+ 
              all_countries[,"hospital_beds_per_thousand"]+
              all_countries[,"Prevalence...Asthma...Sex..Both...Age..Age.standardized..Percent."] + 
              all_countries[,"cardiovasc_death_rate"])
print(coefficients(summary(model)))
summary(model)$r.squared
summary(model)$adj.r.squared
plot(model)
plot(model, pch=18, col="red", which=c(4))

pred_int <- predict(model,interval = "prediction")
in_pred_int <- sum(log(all_countries[,"total_deaths_per_million"]) >= pred_int[,2] &
                     log(all_countries[,"total_deaths_per_million"]) <= pred_int[,3]);in_pred_int
in_pred_int/nrow(pred_int)

all_countries_ef <- all_countries

pred_int_ef <- predict(model,interval = "prediction")
all_countries_ef <- all_countries_ef[order(pred_int_ef[,1]),]
pred_int_ef <- pred_int_ef[order(pred_int_ef[,1]),]

conf_int_ef <- predict(model,interval = "confidence")
conf_int_ef <- conf_int_ef[order(conf_int_ef[,1]),]

plot(log(all_countries_ef[,"total_deaths_per_million"]), ylab=" Log of total deaths per million",xlim=c(0, nrow(all_countries_ef)),ylim=c(0, 10))
lines(1:nrow(all_countries_ef), pred_int_ef[,1],
      col = "green", lwd = 2)
lines(1:nrow(all_countries_ef), pred_int_ef[,2],
      col = "dodgerblue3", lwd = 2)
lines(1:nrow(all_countries_ef), pred_int_ef[,3],
      col = "dodgerblue3", lwd = 2)
lines(1:nrow(all_countries_ef), conf_int_ef[,2],
      col = "darkorange2", lwd = 2)
lines(1:nrow(all_countries_ef), conf_int_ef[,3],
      col = "darkorange2", lwd = 2)

#Using the same function as earlier to check for NA's
which_have_na(c(41,49,37,80,48,54,43))


#Model 2.3
all_countries <- data_generator()[-c(90,84,76,60,47),]
all_countries_parameters_of_interest <- select(all_countries,c(37,38,39,40,41,43,44,45,46,48,49,50,54,80))
significant_parameters_function_forward(all_countries_parameters_of_interest,T)
model <- lm(log(all_countries[,"total_deaths_per_million"]) ~ all_countries[,"human_development_index"]+
              all_countries[,"population_density"] +
              all_countries[,"hospital_beds_per_thousand"]+ 
              all_countries[,"gdp_per_capita"]+
              all_countries[,"Deaths...High.body.mass.index...Sex..Both...Age..All.Ages..Number."] + 
              all_countries[,"cardiovasc_death_rate"])
print(coefficients(summary(model)))
summary(model)$r.squared
summary(model)$adj.r.squared
plot(model)
plot(model, pch=18, col="red", which=c(4))

pred_int <- predict(model,interval = "prediction")
in_pred_int <- sum(log(all_countries[,"total_deaths_per_million"]) >= pred_int[,2] &
                     log(all_countries[,"total_deaths_per_million"]) <= pred_int[,3]);in_pred_int
in_pred_int/nrow(pred_int)

#-----------------------------------------------------
#Compareing the final models
all_countries <- data_generator()[-c(90,84,76,60,47,42),]
model_forward <- lm(log(all_countries[,"total_deaths_per_million"]) ~ all_countries[,"human_development_index"]+
              all_countries[,"population_density"] +
              all_countries[,"hospital_beds_per_thousand"]+ 
              all_countries[,"gdp_per_capita"]+
              all_countries[,"Deaths...High.body.mass.index...Sex..Both...Age..All.Ages..Number."] + 
              all_countries[,"cardiovasc_death_rate"])

model_backward <- lm(log(all_countries[,"total_deaths_per_million"]) ~ 0+all_countries[,"gdp_per_capita"] + 
                       all_countries[,"hospital_beds_per_thousand"] + 
                       all_countries[,"human_development_index"]+
                       all_countries[,"Deaths...High.body.mass.index...Sex..Both...Age..All.Ages..Number."])

#Calculating AIC, AICc and BIC
AIC(model_forward, model_backward)
AICc(model_forward, model_backward)
BIC(model_forward, model_backward)

