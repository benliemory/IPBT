IPBT.bayes <-
function(control,treat,hist_var,hist_sampleSize)
    { ### Use bayes factor to rank DE genes 
        
        mean_treat=rowMeans(treat)
        mean_control=rowMeans(control)
        n = dim(control)[2]
        
        ## specify prior parameters
        mu_0 = rowMeans(control)
        k_0 = hist_sampleSize 
       
        v = hist_sampleSize 
        w_square = hist_var
        
        ## calulate posterior parameter
        k_n = k_0 + n
        v_n = v + n
        
        mu_new = (k_0/k_n)*mu_0 + (n/k_n)*mean_control
        s_sample = apply(control,1,var)
        w_square_new = (v/v_n)*w_square + ((n-1)/v_n)*s_sample + 
            ((n/v_n)*(k_0/k_n)*(mu_0 - mean_control)^2)
        
        Adjust_sigma_square = (v_n/(v_n-2))*w_square_new 
        
        
        numerator = k_0*mu_0^2 + (2*n^2*mean_control*mean_treat - mu_0^2*k_0^2)/(2*n+k_0) -
            n/(2*n+k_0)/(n+k_0)*(n^2*(mean_control^2+mean_treat^2) + 2*n*mu_0*k_0*(mean_control+mean_treat) +2*mu_0^2*k_0^2)
        denominator = 2*Adjust_sigma_square
        logLR = numerator/denominator + log(sqrt(k_0/(2*n+k_0))/(k_0/(n+k_0)))
        
        
        
        
    }
