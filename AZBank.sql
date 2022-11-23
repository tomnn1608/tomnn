--2
create table Customer(
   CustomerId int not null,
   Name nvarchar(50) ,
   City nvarchar(50) ,
   Country nvarchar(50) ,
   Phone nvarchar(50) ,
   Email nvarchar(50) 
);
create table CustomerAccount(
   AccountNumber char(9) not null,
   CustomerId int not null ,
   Balance money not null,
   MinAccount money ,
);
create table CustomerTransaction(
   TransactionId int not null,
   AccountNumber char(9) ,
   TransactionDate smalldatetime ,
   Amount money check(Amount<1000000 and Amount>0) --6, 
   DepositorWithdraw bit 
);

drop table CustomerTransaction;
drop table CustomerAccount;
drop table Customer;

--3
insert into Customer(CustomerId,Name,City,Country,Phone,Email)
values(1,N'Đức',N'Hà Nội',N'Việt Nam',091238,N'duc@gmail.com'),
(2,N'Hà',N'Hải Phòng',N'Việt Nam',423404,N'ha@gmail.com'),
(3,N'Duy',N'Bắc Giang',N'Việt Nam',86786771,N'duy@gmail.com');
insert into CustomerAccount(AccountNumber,CustomerId,Balance,MinAccount)
values(123,1,100,50),
(124,2,200,50),
(125,3,250,50);
insert into CustomerTransaction(TransactionId,AccountNumber,TransactionDate,Amount,DepositorWithdraw)
values(4,123,2022-2-7,50,2000),
(5,124,2022-11-4,50,100),
(6,125,2022-9-8,50,1300);

--4
select * from Customer where City like N'Hà Nội';
--5
select a.Name,Phone,Email , b.AccountNumber,Balance from Customer a
inner join CustomerAccount b
on a.CustomerId = b.CustomerId;

--7
create procedure vCustomerTransactions as
select a.Name,b.AccountNumber,c.TransactionDate,c.Amount,c.DepositorWithdraw from Customer a
inner join CustomerAccount b on a.CustomerId=b.CustomerId
inner join CustomerTransaction c on b.AccountNumber=c.AccountNumber ;
exec vCustomerTransactions;






