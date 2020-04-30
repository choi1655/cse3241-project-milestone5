use ProjectMilestone5;
select count(*) from company.Feedback where (company.Feedback.SalespersonScore + company.Feedback.ProductScore + company.Feedback.DeliveryScore) > 10;