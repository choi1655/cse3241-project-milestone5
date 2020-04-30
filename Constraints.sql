use ProjectMilestone5;

alter table company.Employee add constraint employee_pk primary key (EmployeeID);
alter table company.Commission add constraint commission_pk primary key (EmployeeID);
alter table company.Salary add constraint salary_pk primary key (EmployeeID);
alter table company.Hourly add constraint hourly_pk primary key (EmployeeID);
alter table company.Dependents add constraint depedent_pk primary key (Employee, LName, FName);
alter table company.Branch add constraint branch_pk primary key (BranchNumber);
alter table company.DeptCode add constraint dept_code_pk primary key (DeptDisc);
alter table company.Department add constraint dept_pk primary key (DeptDisc, BranchNumber);
alter table company.Parts add constraint parts_pk primary key (PartNumber);
alter table company.PartInventory add constraint inventory_pk primary key (BranchNumber, PartNumber);
alter table company.Manufacturer add constraint manufacturer_pk primary key (PartNumber, ManuComp);
alter table company.Product add constraint product_pk primary key (ProductID);
alter table company.MaterialRequirement add constraint materialrequirement_pk primary key (ProductID, PartNumber);
alter table company.Instruction add constraint instruction_pk primary key (ProductID, Step);
alter table company.EmployeeReview add constraint employeereview_pk primary key (OrderNumber, Step, ProductID, EmployeeID);
alter table company.Feedback add constraint feedback_pk primary key (CustomerID, ReviewDate);
alter table company.Complaint add constraint complaint_pk primary key (ComplaintID);
alter table company.Account add constraint account_pk primary key (CustomerID);
alter table company.Customer add constraint customer_pk primary key (CustomerID);
alter table company.ContactInformation add constraint contact_info_pk primary key (CustomerID, PhoneNumber);
alter table company.Orders add constraint order_pk primary key (OrderNum);
alter table company.OrderedProduct add constraint ordered_product_pk primary key (OrderNum, Product);


  alter table company.Employee add constraint department_fk foreign key (DeptDisc, Branch) references company.Department(DeptDisc, BranchNumber) on delete set null;
  alter table company.Employee add constraint supervisor_fk foreign key (Supervisor) references company.Employee(EmployeeID) on delete no action;
  alter table company.Employee add constraint default_hiredate default getdate() for HiredDate;
  alter table company.Employee add constraint ck_employee_pay check (PayCode in ('C','S','H'));
  alter table company.Employee add constraint employee_hiredate check (HiredDate <= getdate());

  
  alter table company.Commission add constraint commission_fk foreign key (EmployeeID) references company.Employee(EmployeeID) on delete cascade;
  alter table company.Commission add constraint commission_paycode check (PayCode='C');

  
  alter table company.Salary add constraint salary_fk foreign key (EmployeeID) references company.Employee(EmployeeID) on delete cascade;
  alter table company.Salary add constraint salary_paycode check (PayCode='S');

  alter table company.Hourly add constraint hourly_fk foreign key (EmployeeID) references company.Employee(EmployeeID) on delete cascade;
  alter table company.Hourly add constraint hourly_paycode check (PayCode='H');

  alter table company.Dependents add constraint employee_fk foreign key (Employee) references company.Employee(EmployeeID) on delete cascade;
  alter table company.Dependents add constraint dob check (DOB <= getdate());

  alter table company.Branch add constraint branch_uq unique (BranchAddress);
  alter table company.Branch add constraint branchmanager_fk foreign key (BranchManager) references company.Employee(EmployeeID) on delete set null;

  alter table company.DeptCode add constraint dept_code_uq unique (DeptName);

  alter table company.Department add constraint dept_desc_fk foreign key (DeptDisc) references company.DeptCode(DeptDisc) on delete cascade;
  alter table company.Department add constraint branchnum_fk foreign key (BranchNumber) references company.Branch(BranchNumber) on delete cascade;

  alter table company.Parts add constraint parts_uq unique (PartName);

  alter table company.PartInventory add constraint branch_fk foreign key (BranchNumber) references company.Branch(BranchNumber) on delete cascade;
  alter table company.PartInventory add constraint partnum_fk foreign key (PartNumber) references company.Parts(PartNumber) on delete cascade;

  alter table company.Manufacturer add constraint manufacturer_fk foreign key (PartNumber) references company.Parts(PartNumber) on delete cascade;

  alter table company.Product add constraint product_uq unique (ProductName);

  alter table company.MaterialRequirement add constraint productid_fk foreign key (ProductID) references company.Product(ProductID) on delete cascade;
  alter table company.MaterialRequirement add constraint mrpartnum_fk foreign key (PartNumber) references company.Parts(PartNumber) on delete cascade;

  alter table company.Instruction add constraint instruction_fk foreign key (ProductID) references company.Product(ProductID) on delete cascade;

  alter table company.EmployeeReview add constraint erorder_fk foreign key (OrderNumber) references company.Orders(OrderNum) on delete cascade;
   alter table company.EmployeeReview add constraint erstep_productid_fk foreign key (ProductID, Step) references company.Instruction(ProductID, Step) on delete cascade;
  alter table company.EmployeeReview add constraint erproductid_fk foreign key (ProductID) references company.Product(ProductID) on delete no action;
  alter table company.EmployeeReview add constraint eremployeeid_fk foreign key (EmployeeID) references company.Employee(EmployeeID) on delete cascade;

  alter table company.Feedback add constraint feedback_fk foreign key (CustomerID) references company.Customer(CustomerID) on delete cascade;
  alter table company.Feedback add constraint feedback_default_date default getdate() for ReviewDate;

  alter table company.Complaint add constraint complaint_fk foreign key (CustomerID) references company.Customer(CustomerID) on delete cascade;
  alter table company.Complaint add constraint complaint_default_date default getdate() for ComplaintDate;

  alter table company.Account add constraint account_fk foreign key (CustomerID) references company.Customer(CustomerID) on delete cascade;

  alter table company.Customer add constraint salesperson_fk foreign key (Salesperson) references company.Employee(EmployeeID) on delete set null;

  alter table company.ContactInformation add constraint contact_info_fk foreign key (CustomerID) references company.Customer(CustomerID) on delete cascade;

  alter table company.Orders add constraint ordercustomer_fk foreign key (CustomerID) references company.Customer(CustomerID) on delete set null;
  alter table company.Orders add constraint order_default_date default getdate() for OrderDate;
  alter table company.Orders add constraint orderdate check (OrderDate <= getdate());

  alter table company.OrderedProduct add constraint ordered_product_fk foreign key (OrderNum) references company.Orders(OrderNum) on delete cascade;