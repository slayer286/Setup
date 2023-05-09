clc
clear all
close all
fm=500;
fc=5000;
no_of_cycles=fc/2/fm;
t=0.00001:0.00001:1;
N=1;
amp=1;
rng(2);

% s=square(2*pi*fm*t);


 c=amp*sin(2*pi*fc*t);
% temp=s;
for i=1:100: length(c)
    inp((i-1)/100+1)=s(i);
    x=randi([0,1],1,1);
    sign=2*x-1;
    for j=i:i+100  
    if(j>length(s)) 
        break
    end
    s(j)=s(j)*sign;
    end
end

 bpsk=(s.*c);
   figure(1)
  plot(t,s);
  axis([0 0.01 -1 1]);
  figure(2)
  plot(t,c);
  axis([0 0.01 -1 1]);
  figure(3)
  plot(t,bpsk);
  axis([0 0.01 -1 1]);
% bpsk1=bpsk';



%Decoding
% rx=
% for z=1:length(rx)
%     r_x(z)=rx(z)-;
% end
% rx_m= r_x.*c;
% figure(2)
% plot(t,rx);
% for i=1:100: length(rx_m)
%     sum=0;
%     for j=i:i+100  
%     if(j>length(s)) 
%         break
%     end
%     sum=sum+rx_m(j);
%     end
%     sum=sum/100;
%     sum_arr((i-1)/100+1)=sum;
%     if(sum>0)
%         output((i-1)/100+1)=1;
%     else
%         output((i-1)/100+1)=0;
%     end
% end
% err=0;
% for i= 1:length(output)/2
%     if(output(i)~=inp(i))
%         err=err+1;
%     end
% end
% ber=err/length(output);


