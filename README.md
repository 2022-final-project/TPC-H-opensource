Ubuntu 20.04 환경에서 TPC-H 를 통해 Tables, Datas, Quries 를 받는다.

이 TPC-H 를 통해 확보한 Data들을 postgreSQL 을 통하여

CREATE TABLES, INSERT DATAS, Query Optimization 을 진행한다.

첨부된 File 들은 postgreSQL 환경에서 사용할 수 있도록 수정이 된 Open source 이다.

|문제점|
|-----|
|22개의 쿼리에는 postgreSQL에서 실행할 수 없는 형태의 쿼리들이 담겨있다|

# 설치 과정

root# cd dbgen
root# cp makefile.suite makefile
root# vi makefile

|<br>CC = gcc</br>DATABASE = ORACLE
MACHINE = LINUX
WORDLOAD = TPCH|
|-----|
