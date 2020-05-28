function min_score = matching_cdv(cd1, cd2, shift_para)
%---------------------------
[a b c] = size(cd1);

cd1 = cd1(:, shift_para+1:end-shift_para, shift_para+1:end-shift_para);

score = zeros(shift_para*2, shift_para*2);
for i = 1:shift_para*2
    for j = 1:shift_para*2
        for k = 1:a
            mp(:,:) = xor(cd1(k,:,:),cd2(k,i:b-shift_para*2+i-1,j:c-shift_para*2+j-1));
            sum_score(k) = sum(mp(:));
        end
        score(i,j) = (sum_score(1)*0.6+sum_score(1)*0.2+sum_score(1)*0.2)/(a*b*c);
    end
end

min_score = min(score(:));
end