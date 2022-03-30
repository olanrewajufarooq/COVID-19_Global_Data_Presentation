function reversed_cumsum = reverse_cum_vec(cumsumvec)
%REVERSE_CUM_SUM Summary of this function goes here
%   Detailed explanation goes here
reversed_cumsum = zeros(1, length(cumsumvec));
reversed_cumsum(1) = cumsumvec(1);
for i = 2:length(cumsumvec)
    reversed_cumsum(i) = cumsumvec(i) - cumsumvec(i-1);
end

end

