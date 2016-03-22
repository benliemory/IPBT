IPBT.main <-
function(Control,Treatment, IPBT.prior=FALSE,
                     history=NA,IPBT.id=NA)
{
    if ( (IPBT.prior==FALSE & all(is.na(history)==1)  ) | 
             (IPBT.prior==TRUE &  all(is.na(IPBT.id)==1) )  ) 
        stop("Historical information is missing!\nPlease provide historical data or use IPBT prior!") 
    
    if(IPBT.prior==FALSE)
    {
        hist_var = apply(history,1,var)
        hist_sampleSize = dim(history)[2]
    }
    
    if(IPBT.prior==TRUE)
    {   
        data(IPBT3digits)
        data(SampleSize)
        hist_var = IPBT3digits[,IPBT.id]^2
        hist_sampleSize = SampleSize[IPBT.id,2]
    }
    

    Bayes.post.prob.res = IPBT.bayes(Control,Treatment,hist_var,hist_sampleSize)
    Bayes.post.prob = Bayes.post.prob.res$logLR
    Pvalue_appro = Bayes.post.prob.res$Pvalue
    FDR = p.adjust(Pvalue_appro, method = "BH" )
    
    orders.bayes.post = rank(Bayes.post.prob) 
    
    
    
    Output = data.frame(Probe_id = row.names(Bayes.post.prob.res),
                        Post_Prob = exp(Bayes.post.prob),
                        log_Post_Prob = Bayes.post.prob,
                        fold_change = rowMeans(Control) - rowMeans(Treatment), 
                        DE_rank = orders.bayes.post,
                        P_value_appro = Pvalue_appro,
                        False_Discovery_Rate = FDR 
                        )
    
    Output = Output[order(Output$Post_Prob,decreasing = F),]
    
    
   
    
    
}
