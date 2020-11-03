SELECT 'Brenna_Berlin' as Customer, SUM(BookingFee) as Revenue
FROM sys.Date
WHERE Profile1 = 'Brenna_Berlin' OR Profile2 = 'Brenna_Berlin'
