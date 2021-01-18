use Sales_Database;
go

create table OrganizationalStructure
(Organization varchar(20) not null,
Segment varchar(20) not null)

create table ProfitTarget
(Segment varchar(20) not null,
[Month] varchar(10) not null,
[Year] int not null,
[% Profit] decimal,
constraint CK_Month check ([Month] in ('January','February','March','April',
'May','June','July','August','September','October','November','December')),
constraint CK_Year check ([Year] between 2010 and year(getdate())),
constraint CK_Profit check ([% Profit] between 0 and 1)
)

delete ProfitTarget

create table Sales
(Segment varchar(20) not null,
Country varchar(20),
Product varchar(20) not null,
[Discount Band] varchar(10),
[Units Sold] int not null,
[Manufacturing Price] decimal not null,
[Sale Price] decimal not null,
[Gross Sales] decimal not null,
Discounts decimal,
Sales decimal,
COGS decimal not null,
Profit decimal not null,
[Date] date not null,
constraint CK_date check ([Date] between '01/01/2010' and getdate())
)

create table SalesSummarized
(Segment varchar(20) not null,
[Month&Year] date not null,
[Gross Sales] decimal not null,
Profit decimal not null,
constraint CK_date check ([Month&Year] between '01/01/2010' and getdate())
)



