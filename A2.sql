use ap;

#1 
select count(*) total_invoices 
from invoices; 

#2
select sum(invoice_total) as total_invoice_amount
from invoices; 

#3
select avg(invoice_total) as average_invoice_total
from invoices; 

#4 
select min(invoice_total) as lowest_invoice_total, max(invoice_total) as highest_invoice_total
from invoices; 

#5
select vendor_id, sum(payment_total) as total_amount_paid
from invoices 
group by vendor_id
order by total_amount_paid desc; 

#6
select vendor_id , count(*) as invoice_count, sum(invoice_total) as total_invoice_amount
from invoices 
group by vendor_id
order by total_invoice_amount desc; 

#7
select account_number, sum(line_item_amount) as total_line_item_amount 
from invoice_line_items 
group by account_number 
order by total_line_item_amount desc; 

#8
select vendor_id, sum(invoice_total) as total_invoice_amount 
from invoices 
group by vendor_id with rollup 
order by vendor_id asc; 


