use ProjectMilestone5;
insert into company.DeptCode values ('Executive', 'EXE');
insert into company.DeptCode values ('Accounting', 'ACC');
insert into company.DeptCode values ('Assembly', 'ASM');
insert into company.DeptCode values ('Engineering', 'ENG');
insert into company.DeptCode values ('Information Technology', 'INF');
insert into company.DeptCode values ('Inventory', 'INV');
insert into company.DeptCode values ('Maintenance', 'MAI');
insert into company.DeptCode values ('Marketing', 'MAR');
insert into company.DeptCode values ('Payroll', 'PAY');
insert into company.DeptCode values ('Purchasing', 'PUR');
insert into company.DeptCode values ('Sales', 'SAL');
insert into company.DeptCode values ('Security', 'SEC');
insert into company.DeptCode values ('Strategy', 'STR');

insert into company.Branch values ('B000001', '12345 Sweet St., Cityburg NY, 54321', NULL);
insert into company.Branch values ('B000002', '2345 Neil St., Flowerville, CA', NULL);

insert into company.Department values ('EXE', 'B000001', NULL);
insert into company.Department values ('EXE', 'B000002', NULL);
insert into company.Department values ('SAL', 'B000001', NULL);
insert into company.Department values ('ASM', 'B000001', NULL);

insert into company.Employee values ('0000001', 'Polk', 'Jefferson', 'S', 'B000001', 'EXE', NULL, '2015-01-06', 'M', 'N', 'N', 'N');
insert into company.Employee values ('0150135', 'Doe', 'John', 'S', 'B000002', 'EXE', NULL, '2015-03-29', 'M', 'Y', 'Y', 'N');
insert into company.Employee values ('2635430', 'Jobs', 'Steve', 'C', 'B000001', 'SAL', NULL, '2016-05-29', 'M', 'Y', 'N', 'Y');
insert into company.Employee values ('4532123', 'Riveter', 'Rosie', 'H', 'B000001', 'ASM', NULL, '2019-08-29', 'F', 'N', 'N', 'N'); 

update company.Department set Manager = '0000001' where DeptDisc = 'EXE' AND BranchNumber = 'B000001';
update company.Department set Manager = '0150135' where DeptDisc = 'EXE' AND BranchNumber = 'B000002';
update company.Department set Manager = '2635430' where DeptDisc = 'SAL' AND BranchNumber = 'B000001';
update company.Department set Manager = '4532123' where DeptDisc = 'ASM' AND BranchNumber = 'B000001';

update company.Branch set BranchManager = '0000001' where BranchNumber = 'B000001';
update company.Branch set BranchManager = '0150135' where BranchNumber = 'B000002';

insert into company.Parts values ('DEF456GHI789', 'Stainless-Steel Screws');
insert into company.Parts values ('ZXC837VBN234', 'Whiz-Bangs');
insert into company.Parts values ('IJI837UEJ837', '1 Inch Duct Tape');
insert into company.Parts values ('JFJ346URY927', 'Flux Capacitor');

insert into company.PartInventory values ('B000001', 'DEF456GHI789', 700, 500);
insert into company.PartInventory values ('B000001', 'ZXC837VBN234', 500, 300);
insert into company.PartInventory values ('B000002', 'DEF456GHI789', 600, 300);

insert into company.Manufacturer values ('DEF456GHI789', 'BuckeyeSteel Inc.', 0.05);
insert into company.Manufacturer values ('DEF456GHI789', 'WufSteel Inc.', 0.04);
insert into company.Manufacturer values ('ZXC837VBN234', 'BuckeyeSteel Inc.', 5.25);

insert into company.Product values ('ABC123', 'Deluxe Rotary Thingamajig', 40.99);
insert into company.Product values ('C849NF', 'Premium Static Thang', 29.99);

insert into company.MaterialRequirement values ('ABC123', 'DEF456GHI789', 9);
insert into company.MaterialRequirement values ('ABC123', 'ZXC837VBN234', 8);
insert into company.MaterialRequirement values ('ABC123', 'IJI837UEJ837', 18);
insert into company.MaterialRequirement values ('ABC123', 'JFJ346URY927', 1);

insert into company.Instruction values ('ABC123', 1, 'Screw the Whiz-Bangs and the Flux Capacitor together.', '00:05:23');
insert into company.Instruction values ('ABC123', 2, 'Wrap the item in Duct Tape.', '00:03:42');

insert into company.Customer values ('C000001', 'Buckeye Bling', 'N', '123 Brutus Rd., Columbus, OH', 10.00, '2635430');
insert into company.Customer values ('C000002', 'Apples Inc.', 'N', '321 Apple Rd., Cupertino, CA', 0.00, '2635430');

insert into company.ContactInformation values ('C000001', '123-456-7890', 'brutus@buckeye.com', 'Brutus', 'Buckeye');
insert into company.ContactInformation values ('C000002', '111-222-3333', 'j.appleseed@apple.com', 'Johnny', 'Appleseed');

insert into company.Orders values ('123456', 'C000001', 33.99, 30, '2019-03-10', '123 Brutus Rd., Columbus, OH', 10.00);
insert into company.Orders values ('857622', 'C000002', 13.98, 30, '2019-04-3', '365 Manufacturing Rd., Cupertino, CA', 0.00);

insert into company.OrderedProduct values ('123456', 'ABC123', 2);
insert into company.OrderedProduct values ('123456', 'C849NF', 3);
insert into company.OrderedProduct values ('857622', 'C849NF', 2);

insert into company.Feedback values ('C000001', '2019-04-02', 4, 5, 3);
insert into company.Feedback values ('C000002', '2019-07-19', 3, 3, 1);

insert into company.Complaint values ('JKL101', 'C000001', '2019-03-30', 'Delivered products somewhat damaged.');

insert into company.Account values ('C000001', 30.00);

insert into company.Dependents values ('0000001', 'Jake', 'Polk', '2006-03-20');

insert into company.Hourly values ('H', '4532123', 12.00, 40.00, 1, 4.0, 552.00);

insert into company.Salary values ('S', '0000001', 7000000.00);

insert into company.Commission values ('C', '2635430', 60000.00, 0.10, 250000.00, 25000.00);

insert into company.EmployeeReview values ('123456', 2, 'ABC123', '4532123', '13:40:00', '13:47:00');