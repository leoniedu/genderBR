# zzz.R
.onLoad <- function(libname, pkgname) {
  ## memoise saves computing time by storing results
  ## memoise from scratch while loading package
  get_gender_api <<- memoise::memoise(get_gender_api, cache = dbgender)
}

