function don_code = hash_hist_learning(img, don_template)

[col row] = size(img);
img0 = 255-img;
row_col = row*col;


conv_res = conv2(img0, don_template, 'same');

don_code1 = conv_res > 0;
don_code2 = bwmorph(don_code1, 'open');
don_code3 = bwmorph(don_code1, 'close');

don_code(1,:,:) = don_code1(:,:);
don_code(2,:,:) = don_code2(:,:);
don_code(3,:,:) = don_code3(:,:);
end