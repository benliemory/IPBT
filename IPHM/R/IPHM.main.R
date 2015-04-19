IPHM.main <-
function(Control,Treatment, IPHM.prior=FALSE,
                     history=NA,IPHM.id=NA)
{
    if ( (IPHM.prior==FALSE & all(is.na(history)==1)  ) | 
             (IPHM.prior==TRUE &  all(is.na(IPHM.id)==1) )  ) 
        stop("Historical information is missing!\nPlease provide historical data or use IPHM prior!") 
    
    if(IPHM.prior==FALSE)
    {
        hist_var = apply(history,1,var)
        hist_sampleSize = dim(history)[2]
    }
    
    if(IPHM.prior==TRUE)
    {   
        data(IPHM3digits)
        data(SampleSize)
        hist_var = IPHM3digits[,IPHM.id]^2
        hist_sampleSize = SampleSize[IPHM.id,2]
    }
    

    Bayes.post.prob = IPHM.bayes(Control,Treatment,hist_var,hist_sampleSize)    
    orders.bayes.post = rank(Bayes.post.prob) 
    
    Output = data.frame(Probe_id = names(Bayes.post.prob),
                        Post_Prob = exp(Bayes.post.prob),
                        log_Post_Prob = Bayes.post.prob,
                        DE_rank = orders.bayes.post)
    
    
    
    
   
    
    
}
