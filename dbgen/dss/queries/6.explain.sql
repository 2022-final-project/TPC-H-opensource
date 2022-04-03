-- $ID$
-- TPC-H/TPC-R Forecasting Revenue Change Query (Q6)
-- Functional Query Definition
-- Approved February 1998
:x
:o
explain select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date ':1'
	and l_shipdate < date ':1' + interval '1' year
	and l_discount between :2 - 0.01 and :2 + 0.01
	and l_quantity < :3;
:n -1
-- using 1647939987 as a seed to the RNG


explain select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1994-01-01'
	and l_shipdate < date '1994-01-01' + interval '1' year
	and l_discount between 0.07 - 0.01 and 0.07 + 0.01
	and l_quantity < 24
LIMIT 1;
-- $ID$
-- TPC-H/TPC-R Forecasting Revenue Change Query (Q6)
-- Functional Query Definition
-- Approved February 1998
:x
:o
select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date ':1'
	and l_shipdate < date ':1' + interval '1' year
	and l_discount between :2 - 0.01 and :2 + 0.01
	and l_quantity < :3;
:n -1
-- using 1647939987 as a seed to the RNG


select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1994-01-01'
	and l_shipdate < date '1994-01-01' + interval '1' year
	and l_discount between 0.07 - 0.01 and 0.07 + 0.01
	and l_quantity < 24
LIMIT 1;
