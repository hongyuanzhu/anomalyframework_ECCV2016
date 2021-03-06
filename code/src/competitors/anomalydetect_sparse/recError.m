function  Re = recError(X, R, ThrTest) 
%    for ii = 1 : size(X,2)
%        X(:,ii) = X(:,ii)/norm(X(:,ii),2);
%    end
   K =  length(R);
   reSet = 1 : size(X,2);
   Re = ones(1,size(X,2));
   for ii = 1 : K 
       tmp = (R(ii).val*X(:,reSet));
       Re(reSet) = sum(tmp.*tmp); 
       idx = find(Re < ThrTest);
       %disp([ num2str(ii),' is ',num2str(length(reSet))]);
       reSet = setdiff(reSet,idx);
   end
    
end