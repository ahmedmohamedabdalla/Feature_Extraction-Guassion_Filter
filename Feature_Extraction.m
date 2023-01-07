%# I extracted ten features from X-Ray images after I make a Gaussian filter
%%in it to remove noise 
image_folder='img_1.jpg';
Input=imread(image_folder);
Mean = mean2(Input);
Standard_Deviation =std2(Input);
Entropy =entropy(Input);
RMS =mean2(rms(Input)); 
kurtosis_1 = kurtosis(Input(:));
skewness_1 = skewness(Input(:));
gray = rgb2gray(Input);

glcms = graycomatrix(gray);  

stats = graycoprops(glcms,'Contrast  Correlation  Energy Homogeneity')
Contrast = stats.Contrast;
Correlation = stats.Correlation;
Energy = stats.Energy;
Homogeneity = stats.Homogeneity;
features = [Mean,Standard_Deviation,Entropy,RMS,kurtosis_1,skewness_1,Contrast,Correlation,Energy,Homogeneity];