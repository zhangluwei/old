 
pwd
mkdir package 
df -h
lscpu
#---------------------
su root
cd /mnt/
mkdir 123
echo "123">000.txt
#curl -fsS -o wow.zip https://cdn1.bootybay.org/wotlk/Whitemane-WotLK-English-v4.1.zip
#7z  x  wow.zip
#mv wow package

#curl -fsS -o package.zip https://github.com/zhangluwei/old/releases/download/1.0.0/package.zip
#7z  x  package.zip

ls -lah

#----------------------
#cd package
#map_extractor.exe
#vmap4_extractor.exe
#vmap4_assembler.exe
#map_extractor.exe

#
#7z -mx9 a vmaps.zip package
#appveyor PushArtifact vmaps.zip
#
#7z -mx9 a dbc.zip package
#appveyor PushArtifact dbc.zip
#
#7z -mx9 a mmap.zip package
#appveyor PushArtifact mmap.zip
#
#7z -mx9 a map.zip package
#appveyor PushArtifact map.zip
#
#7z -mx9 a cameras.zip package
#appveyor PushArtifact cameras.zip
#
#7z -mx3 a package.zip package
#appveyor PushArtifact package.zip

#7z -mx3 a build.zip build
#appveyor PushArtifact build.zip

#7z -mx3 a mysql.zip C:\mysql-8.1.0-winx64
#appveyor PushArtifact mysql.zip

#7z -mx3 a openssl.zip C:\OpenSSL-v33-Win64
#appveyor PushArtifact openssl.zip

#7z -mx3 a boost.zip C:\Libraries\boost_1_85_0
#appveyor PushArtifact boost.zip
