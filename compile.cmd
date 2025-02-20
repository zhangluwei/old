@echo on

wmic cpu get Name,MaxClockSpeed,NumberOfCores,NumberOfLogicalProcessors
wmic logicaldisk list brief

set BOOST_ROOT=C:\Libraries\boost_1_85_0
set OPENSSL_ROOT_DIR=C:\OpenSSL-v33-Win64
set OPENSSL_INCLUDE_DIR=C:\OpenSSL-v33-Win64\include
set OPENSSL_LIBRARIES=C:\OpenSSL-v33-Win64\lib
set MYSQL_HOME=C:\mysql-8.1.0-winx64
set MYSQL_DIR=C:\mysql-8.1.0-winx64
set MYSQL_INCLUDE_DIR=C:\mysql-8.1.0-winx64\include
set MYSQL_LIBRARY=C:\mysql-8.1.0-winx64\lib
set MYSQL_ROOT=C:\mysql-8.1.0-winx64

cd \
dir
git -v
mysql -V
 
