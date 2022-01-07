create table [OrderRequestDatabase.Users] (
    UserID varchar(28) not null,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Email varchar(50) not null,
    primary key(UserID)
);

create table [OrderRequestDatabase.Orders] (
    OrderID int identity(1, 1) not null,
    TimeLeaving DateTime not null,
    Destination varchar(50) not null,
    primary key(OrderID)
)