findGlobals <- function(filein="00check.log", fileout="globals.R"){
    checklog <- readLines(filein)
    whichline <- which(grepl("checking R code for possible problems .* NOTE", checklog))
    checklog <- checklog[-(1:whichline)]
    whichline <- which(grepl("checking Rd files", checklog))
    checklog <- checklog[-(whichline:length(checklog))]
    globals <- gsub(".*no visible binding for global variable ", "", checklog)
    globals <- gsub(".*no visible global function definition for ", "", globals)
    globlas <- gsub(".*no visible binding for '<<-' assignment to ", "", globals)
    globals <- globals[globals != ""]
    globals <- sub("^ *", "", globals)
    globals <- sub(" *$", "", globals)
    whichentries <- which(grepl(":", globals))
    globals <- globals[-whichentries]
    globals <- gsub(".* ", "", globals)
    globals <- unique(globals)
    cmd <- paste("if (getRversion() >= '2.15.1') globalVariables(c(",
                 paste(globals, collapse=", "), "))", sep="")
    cmd <- strwrap(cmd)
    writeLines(cmd, fileout)
    return(cmd)
}
