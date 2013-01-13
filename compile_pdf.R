#' run like this "require(devtools);source_gist("https://gist.github.com/4485043");"

compile_pdf<- function(filename, typeset="pdflatex"){
  require(knitr)
  prev_enc <- getOption("encoding")
  options(encoding="UTF-8")
  rnw <- knit(filename, envir=new.env())
  system(paste(typeset, rnw))
  options(encoding=prev_enc)
}



knit_ko_win <- function(filename, ...){  
  require(knitr)
  prev_enc <- getOption("encoding")
  options(encoding="UTF-8")
  rnw <- knit(filename, envir=new.env(),...)
  options(encoding=prev_enc)
  return(rnw)
}