function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

%aquí se obtiene la media de cada una de las columnas en un solo vector
mu = mean(X);

%aquí se obtiene la desviación standar de cada una de las columnas
sigma = std(X);

%aquí se obtienen la cantidad de variables o columnas del dataset
m = columns(X);

for i=1:m

	%esta es la diferencia de cada uno de los registros de la columna X(i)columna - Media(i)columna
	X_minus_M = X(:,i) - mu(i);
	
	%aquí ya obtenemos los valores divididos entre la desviación standar.
	X_norm(:,i) = X_minus_M / sigma(i);	
	
end





% ============================================================

end
