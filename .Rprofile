setHook("rstudio.sessionInit", function(newSession) {
  if (newSession && is.null(rstudioapi::getActiveProject()))
    rstudioapi::openProject("/workspace/tidytuesdays-distill/tidytuesdays-distill.Rproj")
}, action = "append")