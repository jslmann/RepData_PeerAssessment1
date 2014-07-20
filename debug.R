week_factor <- function ( aDate ) {
    wfactor = as.factor(c("weekend","weekday"))
    weekday = weekdays(as.Date(aDate)
    if (weekday %in% c("Saturday","Sunday"))
    {wfactor[1]}
    else
    {wfactor[2]}
}

df_wd <- df_nona %>% mutate(weekend = week_factor(date)) 
