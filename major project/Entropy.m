function v = Entropy(x)

x = x(:);
n = length(x);
x_unique = unique(x);
c = length(x_unique);

% distribution of result and x
Ml = double(repmat(x,1,c) == repmat(x_unique',n,1));
Pl = sum(Ml)/n;


% entropy of Pr and Pl
v = -sum( Pl .* log2( Pl + eps ) );
