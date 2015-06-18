close all
clear all
clc
% 
a = [192.60183715684408 289.4739835404244 248.16585204778823 314.9177350836037 184.58560819346448 189.34865395012372 248.94630715983837 259.63882093115024 166.26208609107104 249.01918747416755 379.41576289933806 182.2117902255672 180.98052488434732 214.22825282551142 228.17772514002334 271.82859707615387 181.826417944066 295.77544418325886 274.4226947697244 270.7238785182153 507.11710450615357 168.14395843492977 307.55892084167755 166.93951397660047 213.35634886148472 267.489155335851 177.06836769112687 258.7795474738359 207.91642821864463 199.27381068989627 400.86185430996983 814.0001516908384 282.36111425459086 326.3654616345761 318.5044091995399 164.90372224398874 267.1900278728801 217.9749222784582 220.93853369457418 936.0386590273561 356.08657511366147 188.67575034731033 181.66936178058185 158.40068314507232 1161.2672509563736 225.45067530644184 223.79948566892645 209.8918881540988 280.1616106159405 197.51372825183776 249.4234754638701 129.05106977384045 181.38536608698655 182.78303418280154 274.21654661970723 214.65325693580496 155.79054314469047 244.12940113804692 213.70163893492486 195.36935566695493 220.31860932268663 219.60288098668806 354.0229107589429 700.9358826498369 475.5610714329898 719.6749469895263 265.0120626633397 111.96916994147739 196.82236758211727];
am = mean(a);
b= [116.72455278445554 91.65619369366004 118.9140364075692 175.72212638920217 191.08511362399736 135.1405357903652 176.45017497937084 226.58429061763903 205.1121894070207 106.90217371624614 541.3597687961941 175.23699555790785 158.13685848302362 143.97142271903763 253.2562608617803 156.62347957116103 97.47784396147055 211.21430883215425 510.05636625653796 163.01277006320336 279.681287197164 135.66904163874028 106.44445054298639 168.60490505069058 142.56325204585224 120.17815986077922 141.04194296297314 148.68143846357188 127.61619454750411 135.64401384314658 275.8338023171532 239.0449692476266 382.27481103590276 1683.9575901847115 152.50728297356508 176.2635828258211 196.3475436205758 370.5102911709775 172.27610049482138 123.06512592112955 201.52043464697073 123.66880349494475 109.57411541819388 123.24988370338416 87.12476117403386 93.96451604499407 140.50801968680676];
bm = mean(b);
c= [1126.1980682339424 362.9557622580917 445.39198976874883 579.5010725106415 589.703246245555 741.1271899633209 357.5033946246865 1439.293168092286 713.6738675291068 1846.915088461168 809.6532192667726 349.1270392439386 412.2472511499528 470.5484931027817 1058.6174790882003 303.89736112562167 758.4741633483437 491.09116094583607 326.14693292146205 547.6064805510077 703.4413213534516 310.1640415763641 440.6938365238841 390.7901690498941 503.2261013148545 1616.6241735752137 418.4841050392777 631.3900350070317 343.1624392278754 348.62682042007816 490.77119661960955 829.1833922690703 374.0637678543601 735.4668657674998 541.0134930334125 297.5120623603721 199.85494480065407 114.88075299315572 785.1221691627412 298.486819055617 428.0870876913363 238.8446510995552 573.4374997468843 507.9287008379527 277.228700827512 351.1373678578781 1000.5205285306002 747.4217158704981 247.66234323966097 680.9520704984612 358.63946667646866 675.6870369602505 595.0655684080018 645.2894151839245 1625.835068806321 1225.1889357193486 198.02624350170143];
cm = mean(c);
ALL = [a b c];



grp = [zeros(1,69),ones(1,47),ones(1,57) * 2];
% figure
% hold on
positions = [0 1 2];
boxplot(ALL, grp, 'positions', positions)
set(gca,'xtick',positions)
set(gca,'xticklabel',{'Male','Female', 'Robot'})


% times = [88.48 60.142 63.658 72.376 61.021 100.83 67.523 28.404 57.158 52.991 48.038 60.258 40.639 53.421 83.182 66.425 69.704 56.039 53.441 52.403 49.357 55.791 99.763 66.005 50.437 64.723 92.29 55.24 61.939 93.576 34.341 44.383 20.718 29.485 29.963 89.706 86.066 91.382 61.51 54.802 18.502 80.711 63.96 71.657 145.309 63.326 86.331 51.103 45.104 73.978 29.066 102.417 104.673 134.822 30.673 71.23 68.098 72.608 61.053 57.781 62.102 64.315 56.642 57.918 36.644 52.313 52.118 213.954 89.418 94.241 111.805 120.465 85.92 45.09 104.761 49.581 43.136 93.408 84.229 31.964 82.899 59.041 40.283 57.675 95.712 76.277 67.188 111.21 68.426 38.889 16.784 83.729 77.251 43.322 66.782 73.743 128.924 92.691 93.575 30.476 117.158 124.355 244.028 67.03 78.508 5197.828 63.775 81.144 91.372 117.133 86.068 74.918 110.342 42.668 100.346 70.59 86.101 27.504 66.478 73.891 81.961 73.61 52.173 196.394 55.34 146.768 74.155 75.274 35.782 70.319 115.662 64.588 56.707 35.602 52.97 43.907 69.457 50.903 76.8 54.644 43.616 133.731 44.761 89.849 81.309 50.94 66.145 56.163 58.191 313.58 59.657 58.535 105.817 45.586 44.723 24.717 55.324 142.68 58.019 76.723 52.274 73.656 90.258 55.998 129.792 82.689 51.757 47.616 52.342 64.916 164.313 126.951 140.18];
% 
% boxplot(times, grp, 'positions', positions)
% set(gca,'xtick',positions)
% set(gca,'xticklabel',{'Male','Female', 'Robot'})
% 
% axis([-1, 3, 0, 190])

% hold on
% bullets = [5842/69 1822/69; 3042/47 955/47; 6566/57 1788/57];
% bar(bullets);
% set(gca,'xtick',positions+1)
% set(gca,'xticklabel',{'Male','Female', 'Robot'})
% legend('Companion','Player')
% axis([0, 4, 0, 140])
% 
% 
% numReactions = [453/69 388/47 261/57];
% bar(numReactions);
% set(gca,'xtick',positions+1)
% set(gca,'xticklabel',{'Male','Female', 'Robot'})
% 
% reactions = [102864/453/1000 41019/453/1000; ...
%     69653/388/1000 16924/388/1000; 328414/261/1000 87019/261/1000];
% bar(reactions);
% set(gca,'xtick',positions+1)
% set(gca,'xticklabel',{'Male','Female', 'Robot'})
% legend('Time to engage','Time to turn towards')
% axis([0, 4, 0, 1.5])
% 
% scores = [107 59 89 81 66 54 66 34 72 78 61 58 44 47 82 77 79 59 63 60 52 76 129 66 89 69 54 71 75 109 60 17 0 19 30 112 44 102 93 47 12 69 60 77 155 69 101 63 72 100 13 42 132 134 16 90 97 89 106 46 83 74 18 9 6 16 69 64 20 107 59 89 56 66 54 66 34 72 78 61 58 44 47 82 77 79 59 63 60 52 76 104 66 89 69 54 71 75 109 60 17 0 19 30 112 44 102 93 22 12 69 60 77 130 44 101 63 72 100 13 42 132 134 16 90 97 89 81 46 83 74 18 -16 -19 16 69 64 20 91 98 117 96 54 97 62 43 103 89 53 103 82 39 76 100 61 43 45 54 18 19 71 109 50 82 65 54 90 89 6 80 40 479 75 98 30 16 35 119 62 134 95 151 29 91 88 91 98 117 96 54 97 62 43 103 89 53 78 82 39 76 100 61 43 20 54 18 19 71 109 50 82 65 54 90 89 6 55 40 454 75 98 30 16 35 119 62 134 95 151 29 91 88 142 45 81 94 81 89 83 407 70 280 86 112 25 84 163 62 59 37 41 56 113 77 126 5 9 253 0 11 110 64 88 29 39 8 67 81 80 1 59 31 71 52 72 16 14 88 133 8 64 103 16 58 81 67 309 241 63 117 45 81 69 81 89 83 382 45 255 86 87 25 84 138 62 59 37 41 56 88 77 126 -20 9 228 0 -14 110 64 88 4 39 -17 67 81 80 1 59 31 71 52 72 -9 14 88 108 -17 64 103 -9 58 81 67 284 216 38]
% 
% positions = [0 1 2 3 4 5];
% grp = [zeros(1,69),ones(1,69)*1,ones(1,47)*2,ones(1,47)*3,ones(1,57) * 4,ones(1,57) * 5];
% boxplot(scores, grp, 'positions', positions)
% set(gca,'xtick',[0.5 2.5 4.5])
% set(gca,'xticklabel',{'Male','Female', 'Robot'})


% 
% survivals = [61/69 43/47 37/57] * 100;
% bar(survivals);
% set(gca,'xtick',positions+1)
% set(gca,'xticklabel',{'Male','Female', 'Robot'})

% 
set(gca,'FontSize',16)
