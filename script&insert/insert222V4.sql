use int222;

insert into Color values(1,'red');
insert into Color values(2,'blue');
insert into Color values(3,'green');
insert into Color values(4,'yellow');
insert into Color values(5,'black');

insert into Type values(1,'electronic');
insert into Type values(2,'kitchen');
insert into Type values(3,'computer');
insert into Type values(4,'furniture');
insert into Type values(5,'doll');
insert into Type values(6,'camera');

insert into User values(1,'testuser','Testpassword1','home bangkok 10150','0123456789','testfullname','ROLE_USER');
insert into User values(2,'testuser2','Testpassword1','home chaingmai 50050','0234567890','testfullname2','ROLE_USER');
insert into User values(3,'testadmin1','Testpassword1','home chaingmai 50050','0234567890','testadminname','ROLE_ADMIN');
insert into User values(4,'testuser3','Testpassword1','home Pattani 20050','0456789000','testfullname3','ROLE_USER');
insert into User values(5,'testuser4','Testpassword1','home chiangrai 54050','0214688900','testfullname4','ROLE_USER');

insert into Product values(1,'Cat dolls','cutest cat doll in the world','215.50','2019-12-7','catImage.jpeg',100,5,1);
insert into Product values(2,'Dog dolls','cutest dog doll in the world','275.50','2020-12-7','dogImage.jpg',100,5,1);
insert into Product values(3,'Korea King Pan','best pan in the world','515.50','2020-12-7','koreaking.jpg',100,2,2);
insert into Product values(4,'ACER PC','computer from ACER','10020.50','2021-01-11','acerPC.jpg',50,3,3);
insert into Product values(5,'soft sofa','sofa from premium producer','5005.50','2020-12-31','softsofa.jpg',50,4,2);
insert into Product values(6,'Canon Camera','camera from canon','15005.50','2020-12-31','canoncamera.png',50,6,4);
insert into Product values(7,'Smooth chair','Smooth Chair canon','2505.50','2021-01-01','smoothchair.jpg',50,4,4);
insert into Product values(8,'Dragon dolls','cutest dragon doll in the world','305.50','2021-02-14','dragondoll.jpg',50,5,3);
insert into Product values(9,'microwave','electornic device for cooking food','3705.50','2021-03-11','microwave.jpg',50,1,1);
insert into Product values(10,'rice cooker','for cooking rice like pro','2000.25','2021-03-14','ricecooker.jpg',50,2,4);

insert into HaveColor values(1,1);
insert into HaveColor values(1,2);
insert into HaveColor values(1,3);

insert into HaveColor values(2,1);
insert into HaveColor values(2,2);
insert into HaveColor values(2,3);
insert into HaveColor values(2,4);
insert into HaveColor values(2,5);

insert into HaveColor values(3,1);
insert into HaveColor values(3,2);
insert into HaveColor values(3,3);
insert into HaveColor values(3,4);


insert into HaveColor values(4,2);
insert into HaveColor values(4,3);
insert into HaveColor values(4,5);

insert into HaveColor values(5,1);
insert into HaveColor values(5,2);
insert into HaveColor values(5,4);
insert into HaveColor values(5,5);

insert into HaveColor values(6,1);
insert into HaveColor values(6,2);
insert into HaveColor values(6,3);
insert into HaveColor values(6,4);
insert into HaveColor values(6,5);

insert into HaveColor values(7,1);
insert into HaveColor values(7,2);
insert into HaveColor values(7,4);

insert into HaveColor values(8,3);
insert into HaveColor values(8,4);
insert into HaveColor values(8,5);

insert into HaveColor values(9,1);
insert into HaveColor values(9,3);
insert into HaveColor values(9,4);

insert into HaveColor values(10,1);
insert into HaveColor values(10,2);
insert into HaveColor values(10,3);
insert into HaveColor values(10,4);
insert into HaveColor values(10,5);








