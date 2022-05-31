source("renv/activate.R")
setwd("/workspace/tidytuesdays-distill")
setHook("rstudio.sessionInit", function(newSession) {
  if (newSession && is.null(rstudioapi::getActiveProject()))
    rstudioapi::openProject("/workspace/tidytuesdays-distill/tidytuesdays-distill.Rproj")
}, action = "append")

