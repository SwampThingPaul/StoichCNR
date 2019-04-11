library(hexSticker)

imgurl="D:/UF/Sterner_CNRModel/hex/220px-Daphnia_pulex.png"
sticker(imgurl, package="CNR", 
        p_size=21, s_x = 1, s_y = 1, s_width = 0.5, s_height = 0.5,p_y=0.45,
        h_fill = "#000000", p_color  = "#ffffff", h_color = "#ffffff",
        p_family="sans",filename="D:/UF/Sterner_CNRModel/hex/CNRModel.png")


## Deconstruct function
test=data.frame(x = 1 + c(rep(-sqrt(3)/2, 2), 0, rep(sqrt(3)/2,2), 0), y = 1 + c(0.5, -0.5, -1, -0.5, 0.5, 1))
test2=rbind(test,test[1,])

#tiff(filename="test.tiff",width=43.9,height=50.8,units="mm",res=200,type="windows",compression=c("lzw"),bg= NA)
#png(filename="test.png",width=43.9,height=50.8,units="mm",res=200,type="windows",bg= NA)
par(family="serif",mar=c(0,0,0,0),oma=c(0,0,0,0))
plot(test,axes=F,ylab=NA,xlab=NA,type="n")
with(test,polygon(x,y,col="white",lwd=1.2))
par(new=F);plot(imgurl)
text(1,1,"TEST")
text(1.5,0.21,"Photo \u00A9 ",srt=30)
dev.off()

### 

library(ggplot2)
library(ggimage)

fill="black";#"#000000"
color="white";#"#ffffff"
subplot=imgurl
size=0.8
s_x=1
s_y=1
s_width=0.5
t_x=1
t_y=0.5
text.val="CNR"
t_color="white"
font.val="serif"
t_size=11

hexd <- data.frame(x = 1 + c(rep(-sqrt(3)/2, 2), 0, rep(sqrt(3)/2,2), 0), y = 1 + c(0.5, -0.5, -1, -0.5, 0.5, 1))
hexd <- rbind(hexd, hexd[1, ])
d <- data.frame(x = s_x, y = s_y, image = imgurl)
d.txt <- data.frame(x = t_x, y = t_y, label = text.val)

hex.stick=ggplot()+
geom_polygon(aes_(x = ~x, y = ~y), data = hexd, size = size,fill = fill, color = color)+
geom_image(aes_(x = ~x, y = ~y, image = ~image),d, size = s_width)+ 
theme_sticker(size)+
  geom_text(aes_(x = ~x, y = ~y, label = ~label), d.txt, size = t_size, color = t_color, family = font.val )+
  geom_text(aes_(x = 1.5, y = 0.26, label = "Photo \u00A9 Paul Herbert"),angle=30,family=font.val,fontface="plain",color="black",size=2)
  
annotate(geom="text",x=1.5,y=0.26,label="Photo \u00A9 Paul Herbert",angle=30,family=font.val,color="black",size=1)

ggsave(hex.stick, width = 43.9, height = 50.8, 
       filename = "D:/UF/Sterner_CNRModel/hex/CNRModel_v2.png", 
       bg = "transparent", units = "mm", dpi=300)

