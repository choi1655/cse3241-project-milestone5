use ProjectMilestone5;
create table company.Employee
  (		EmployeeID				char(7)			not null,
  		LName							varchar(25)	not null,
      FName							varchar(25) not null,
      PayCode						char(1)			not null,
      Branch						char(7),
  		DeptDisc					char(3),
   		Supervisor				char(7),
   		HiredDate					date				not null,
   		Sex								char(1),
   		MaritalStatus			char(1),
   		ExemptionClaimed	char(1),
   		ExtraWitholding		char(1)
  );
  
  create table company.Commission
  (	PayCode								char(1)		not null,
  	EmployeeID						char(7)		not null,
   	Salary								float,
   	CommissionPercentage	float,
   	TotalSale							float,
   	ComissionPayout				float
  );
  
  create table company.Salary
  (	PayCode			char(1)	not null,
   	EmployeeID	char(7)	not null,
   	Salary			float
  );
  
  
  create table company.Hourly
  (	PayCode						char(1)	not null,
   	EmployeeID				char(7)	not null,
   	Wage							float,
   	Hours							float,
   	ShiftDifferential	int,
   	OvertimeHours			float,
   	Payout						float
  );
  
  create table company.Dependents
  (	Employee	char(7) 		not null,
   	LName			varchar(25) not null,
   	FName			varchar(25)	not null,
   	DOB				date				not null
  );
  
  create table company.Branch
  (	BranchNumber	char(7)				not null,
   	BranchAddress	varchar(100)	not null,
   	BranchManager	char(7)
  );
  
  create table company.DeptCode
  (	DeptName	varchar(30)	not null,
   	DeptDisc		char(3)			not null
  );
  
  create table company.Department
  (	DeptDisc			char(3)	not null,
   	BranchNumber	char(7)	not null,
   	Manager				char(7)
  );
  
  create table company.Parts
  (	PartNumber	char(12)		not null,
   	PartName		varchar(40)	not null
  );
  
  create table company.PartInventory
  (	BranchNumber	char(7)		not null,
   	PartNumber		char(12)	not null,
   	Quantity			int				not null,
   	RestockPoint	int				not null
  );
  
  create table company.Manufacturer
  (	PartNumber		char(12)		not null,
   	ManuComp			varchar(20)	not null,
   	Price					float				not null
  );
  
  create table company.Product
  (	ProductID		char(6)			not null,
   	ProductName	varchar(40)	not null,
   	Price				float				not null
  );
  
  create table company.MaterialRequirement
  (	ProductID		char(6)		not null,
   	PartNumber	char(12)	not null,
   	Quantity		int				not null
  );
  
  create table company.Instruction
  (	ProductID		char(6)			not null,
   	Step				int					not null,
   	Description	varchar(300)	not null,
   	Time				time
  );
  
  create table company.EmployeeReview
  (	OrderNumber	char(6)		not null,
   	Step		int			not null,
   	ProductID		char(6)		not null,
   	EmployeeID	char(7)		not null,
   	StartTime		time,
   	EndTime			time
  );
  
  create table company.Feedback
  ( CustomerID					char(7)		not null,
    ReviewDate					date		not null,
   	SalespersonScore		    int			not null,
   	ProductScore				int			not null,
   	DeliveryScore				int			not null
  );
  
  create table company.Complaint
  ( ComplaintID			char(6) 			not null,
    CustomerID			char(7)				not null,
   	ComplaintDate		date					not null,
   	ComplaintFile		varchar(300)	not null
  );
  
  create table company.Account
  ( CustomerID			char(7)				not null,
    Balance					float
  );
  
  create table company.Customer
  ( CustomerID			char(7)				not null,
    Name						varchar(30)		not null,
   	TaxExemption		char(1)				not null,
    PrimaryAddress	varchar(40) 	not null,
    Discount				float,
   	Salesperson			char(7)
  );
  
  create table company.ContactInformation
  ( CustomerID			char(7) 			not null,
    PhoneNumber			char(12) 			not null,
    Email						varchar(30) 	not null,
    FName						varchar(20) 	not null,
    LName						varchar(20) 	not null
  );
  
  create table company.Orders
  ( OrderNum		char(6)						not null,
    CustomerID	char(7),
    Price				float							not null,
    DaysToPay		int								not null,
    OrderDate		date							not null,
    Address			varchar(40) 			not null,
    Discount		float
  );
  
  create table company.OrderedProduct
  ( OrderNum		char(6) 					not null,
    Product  	 	char(6) 					not null,
    Quantity  	int								not null
  );