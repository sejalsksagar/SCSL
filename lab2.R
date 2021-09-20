#lab2 14/09/21

#1.scatter/line plot
speed<-cars$speed;
distance<-cars$dist;
plot(speed, distance, type="p", col="red");

#2. bar charts
c1<-1995:2000;
c2<-c(15, 25, 27, 28, 26, 26.6);
sales.year <- data.frame(year=c1, sales=c2);
sales.year;
attach(sales.year);
barplot(sales, xlab="Year", ylab="Sales", main="", col="white");

soft<-scan();
barplot(table(soft), xlab="Soft drink", ylab="Frequency of preferences", main="", col="blue");

barplot(table(soft)/length(soft), xlab="Soft drink", ylab="Proportion of preferences",
main="", col="gray70");

#3. subdivided bar diagram
year.stud<-matrix(c(2810, 890, 540, 3542, 1363, 471, 4301, 1663, 652, 5362, 2071, 895, 6593, 2752, 1113), byrow=T,ncol=3);
rownames(year.stud)<-c("1996", "1997", "1998", "1999", "2000");
colnames(year.stud)<-c("Humanity", "Science", "Commerce");
year.stud;
total.stud<-margin.table(year.stud, 1);
total.stud;
barplot(total.stud, col="pink", main="");
barplot(t(year.stud), col=c("lightyellow", "pink", "skyblue"), main="", beside=FALSE);

#4. multiple bar diagram
donation<-matrix(c(1154, 1700, 526, 1125, 775, 1280, 155, 560), ncol=4);
colnames(donation)<-c("O","A","B","AB");
rownames(donation)<-c("1995", "2000");
donation;
barplot(t(donation), col=c("orange", "lightyellow", "pink", "skyblue"), main="", beside=T);

#5. pie charts
pie.tax<-c(6526, 7108, 2568, 560, 763);
names(pie.tax)<-c("Excise", "Customs", "Corporation", "Income", "Other");
pie(pie.tax, main="The Tax Revenue of India (1984-85)", col=c("yellow", "black", "red", "green", "blue"));

#6. histogram
midx<-seq(12.5, 112.5, 25);
freq<-c(5, 8, 13, 11, 3);
y<-rep(midx, freq);
brk<-seq(0, 125, 25);
hist(y, breaks=brk, xlab="Sales", main="",col="pink");

#7. plot frequency polygon
midx<-seq(-2.5, 67.5, 5);
freq<-c(0, 322, 213, 70, 27, 26, 17, 16, 11, 10, 7, 6, 5, 1, 0);
plot(midx, freq, type="o", xlab="Age", ylab="Deaths", main="", lwd=2);

