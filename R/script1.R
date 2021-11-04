install.packages("sitreeE")
library(sitreeE)
citation("sitreeE")
bio.nor <- biomass.norway.sitree (dbh.mm = c(50, 60, 100 ), height.dm = c(40, 60,
                                                                          80),
                                  tree.sp = c(1, 10, 30))

bio.nor

result.sitree <- sitree (tree.df   = tr,
               stand.df  = fl,
               functions = list(
                 fn.growth     = 'grow.dbhinc.hgtinc',
                 fn.mort       = 'mort.B2007',
                 fn.recr       = 'recr.BBG2008',
                 fn.management = 'management.prob',
                 fn.tree.removal = 'mng.tree.removal',
                 fn.modif      = NULL, 
                 fn.prep.common.vars = 'prep.common.vars.fun'
               ),
               n.periods = 5,
               period.length = 5,
               mng.options = NA,
               print.comments = FALSE,
               fn.dbh.inc = "dbhi.BN2009",
               fn.hgt.inc =  "height.korf", 
               species.spruce = c(1, 2, 3),
               species.pine = c(10, 11, 20, 21, 29),
               species.harw = c(30, 31),
               fun.final.felling = "harv.prob",
               fun.thinning      = "thin.prob",
               'BN2009',
               'BBG2008', 'SBA.m2.ha', 'spp','pr.spru.ba', 'QMD.cm',
               per.vol.harv = 0.83
)
biomass.Norway (tr = result.sitree$live,
                this.period = "t1") 
