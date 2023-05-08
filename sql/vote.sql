create table vote(
	numb int not null primary key,
	choiceSub varchar(25) not null,
	choice_1 varchar(20) not null,
	choice_2 varchar(20) not null,
	count1 int not null,
	count2 int not null	
);
commit