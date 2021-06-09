#= Sigmoid.jl

a quick script to perform a sigmoid transformation using the equation: 

σ(X) = 1 /(1 + ℯ ^ vX)

function:
    sigmoid(signal;v) 
    
where signal is the input timeseries and the parameter v determines the how shallow / 
steep the sigmoid curve will be. Smaller values of v flatten the curve

From França et al (2018; https://doi.org/10.3389/fphys.2018.01767): 
    The parameter v was chosen based on its effect on the estimated multifractal width for 
    three types of time series: icEEG (NHNN1-channel 1), surrogate EEG (temporally 
    shuffled values of the original time series from NHNN1-channel 1) and a simulated 
    random series (with the same mean and variance), across the range v = [0.1, 2.0] 
    in steps of 0.1. To find the optimal value for the parameter v, we needed to balance 
    the trade-off between the three series in terms of presenting the most distinct Δα 
    values (Appendix Figure E3A in Supplementary Material), while showing minimum 
    distortion on the recording, or maximum correlation with the original time series

=#

function sigmoid(signal; v)
    sigmoid_transform = 1 ./(1 .+ ℯ .^(v .* signal))
    return sigmoid_transform
end