function cycNum=numPointPerCyc(DataCloud_curN,dt)
k=1e-3/dt;
for i=1:size(DataCloud_curN,2)
see(i)=norm(DataCloud_curN(:,i)-DataCloud_curN(:,1));
end

tolband=1;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
% if isempty(flag)
% tolband=5;
% flag=find(see(1,tolband:end)<see(tolband))+tolband
% if isempty(flag)
% tolband=10;
% flag=find(see(1,tolband:end)<see(tolband))+tolband
if isempty(flag)
tolband=15*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=20*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=25*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=30*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=35*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=40*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=45*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=50*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=55*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=60*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=65*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=70*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=75*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=80*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=85*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=90*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=95*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=100*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=200*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=300*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=400*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=500*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=600*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=700*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=800*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=900*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1000*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1100*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1200*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1300*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1400*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1500*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1600*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1700*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1800*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=1900*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=2000*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=2100*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=2200*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=2300*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=2400*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=2500*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
if isempty(flag)
tolband=3000*k;
flag=find(see(1,tolband:end)<see(tolband))+tolband;
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
% end
% end

if isempty(flag)
    cycNum=2;
else
    cycNum=min(flag);
end