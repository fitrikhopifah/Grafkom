--A--
select p.productname, p.unitprice, c.categoryname
from products p join categories c
on p.categoryid = c.categoryid
order by c.categoryname asc

select c.companyname, o.orderid, o.orderdate
from orders o join customers c
on o.customerid = c.customerid
order by c.companyname asc

select o.orderid, o.orderdate, od.productid
from orders o join order_details od
on o.orderid = od.orderid

--B--
select o.orderid, o.orderdate, p.productname, od.unitprice
from orders o join order_details od
on o.orderid = od.orderid
join products p on p.productid = od.productid

select (e.firstname ||' '|| e.lastname) as fullname,
t.territorydescription
from employees e join employeeterritories et
on e.employeeid = et.employeeid
join territories t on et.territoryid = t.territoryid

select c.contactname, o.orderid, o.orderdate, s.companyname
from orders o join customers c 
on o.customerid = c.customerid
join shippers s on s.shipperid = o.shipvia

select s.companyname, c.categoryname
from suppliers s join products p
on p.supplierid = s.supplierid
join categories c on c.categoryid = p.categoryid

--C--
select p.productname, p.unitprice, c.categoryname
from products p join categories c 
on p.categoryid = c.categoryid
where c.categoryname ilike 'beverages' and p.unitprice < 10

select c.companyname, o.orderid, o.orderdate
from orders o join customers c 
on o.customerid = c.customerid
where c.country ilike 'USA' and 
(o.orderdate < '1997-01-01') 
order by o.orderdate asc

select c.contactname, o.orderid, o.orderdate,
s.companyname
from orders o join customers c 
on o.customerid = c.customerid
join shippers s on s.shipperid = o.shipvia
where o.shipcountry = c.country and
(o.orderdate > '1997-12-31')

select p.productname, s.companyname, c.categoryname
from products p join categories c
on p.categoryid = c.categoryid
join suppliers s on s.supplierid = p.supplierid
where p.unitprice between 5 and 10

--D--

select * from employees

select (e1.firstname ||' '|| e1.lastname) as karyawan, 
(e2.firstname ||' '|| e2.lastname) as manajer
from employees e1 inner join employees e2
on e1.reportsto = e2.employeeid

select (e1.firstname ||' '|| e1.lastname) as karyawan, 
(e2.firstname ||' '|| e2.lastname) as manajer
from employees e1 full outer join employees e2
on e1.reportsto = e2.employeeid


