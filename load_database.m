function out=load_database();


persistent loaded;
persistent w;
if(isempty(loaded))
    v=zeros(7990272,20);
    for i=1:2
        cd(strcat('s',num2str(i)));
        for j=1:10
            a=imread(strcat(num2str(j),'.pgm'));
            v(:,(i-1)*10+j)=reshape(a,size(a,1)*size(a,2),1);
        end
        cd ..
    end
    w=uint8(v); 
end
loaded=1;  
out=w;