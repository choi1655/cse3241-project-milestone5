use ProjectMilestone5;
select sum(company.Orders.Price) from company.Orders where company.Orders.OrderDate between '2019-01-01' and '2020-01-01';