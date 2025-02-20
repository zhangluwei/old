@echo on

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
appveyor DownloadFile https://cdn.mysql.com/archives/mysql-8.1/mysql-8.1.0-winx64.zip
7z  x  mysql-8.1.0-winx64.zip
echo %time%

git clone   --depth=1 https://codeberg.org/zhangluwei/azerothcore-wotlk.git

::git clone  https://github.com/azerothcore/azerothcore-wotlk.git
::cd azerothcore-wotlk
::git checkout 8f137e67591e3726d1eef4d7d87f0dfbda07b1c4
 
cd azerothcore-wotlk\modules
::git clone   --depth=1  https://github.com/azerothcore/mod-aoe-loot.git
echo %time%

sc start mysql80
cd \
mkdir package
mkdir build

cmake c:/azerothcore-wotlk -B c:/build  -DTOOLS_BUILD=all
 
cd \build
dir

msbuild ALL_BUILD.vcxproj  /p:Configuration=MinSizeRel
::msbuild src\common\common.vcxproj  /p:Configuration=MinSizeRel 
::msbuild src\tools\dbimport.vcxproj /p:Configuration=MinSizeRel 
::msbuild src\tools\dbimport.vcxproj /p:Configuration=MinSizeRel 

xcopy \build\bin\MinSizeRel \package  /s /e 
copy C:\mysql-8.1.0-winx64\lib\libmysql.dll \package\
copy C:\OpenSSL-v33-Win64\bin\legacy.dll    \package\
copy C:\OpenSSL-v33-Win64\bin\libssl-3-x64.dll    \package\
copy C:\OpenSSL-v33-Win64\bin\libcrypto-3-x64.dll    \package\

cd /

7z -mx3 a package.zip package
appveyor PushArtifact package.zip

7z -mx3 a azerothcore-wotlk.zip azerothcore-wotlk
appveyor PushArtifact azerothcore-wotlk.zip

7z -mx3 a build.zip build
appveyor PushArtifact build.zip

echo %time%
 
