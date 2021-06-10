library(mapsf)
revenus <- read.csv("data/rev.csv")
mtq <- st_read("data/martinique.gpkg")
mtq <- merge(mtq, revenus, by = "INSEE_COM", all.x = TRUE)
mf_export(mtq, 
          filename = "fig/map.png", 
          width = 500, res = 110, 
          theme = "iceberg")
mf_shadow(mtq, col = "grey30", add = TRUE)
mf_map(mtq, "MED", "choro", 
       pal = "Dark Mint",
       leg_pos = "bottomleft2", 
       leg_title = "Revenu médian par U.C.\nen euros (2015)", 
       add = TRUE, leg_val_rnd = -2)
mf_title("Niveau de vie en Martinique")
mf_credits(txt = "Insee and IGN, 2018\n T. Giraud, 2021")
mf_scale(5)
mf_arrow()
dev.off()
