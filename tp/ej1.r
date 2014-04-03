> install.packages("e1071")
Installing package(s) into ‘/usr/local/lib/R/site-library’
(as ‘lib’ is unspecified)
probando la URL 'http://r.mirror.mendoza-conicet.gob.ar/src/contrib/e1071_1.6-3.tar.gz'
Content type 'application/x-gzip' length 583697 bytes (570 Kb)
URL abierta
==================================================
downloaded 570 Kb

* installing *source* package ‘e1071’ ...
** package ‘e1071’ successfully unpacked and MD5 sums checked
checking for C++ compiler default output file name... a.out
checking whether the C++ compiler works... yes
checking whether we are cross compiling... no
checking for suffix of executables... 
checking for suffix of object files... o
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
** libs
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -O2 -pipe -g  -c Rsvm.c -o Rsvm.o
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -O2 -pipe -g  -c cmeans.c -o cmeans.o
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -O2 -pipe -g  -c cshell.c -o cshell.o
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG      -fpic  -O2 -pipe -g  -c floyd.c -o floyd.o
g++ -I/usr/share/R/include -DNDEBUG      -fpic  -O2 -pipe -g  -c svm.cpp -o svm.o
g++ -shared -o e1071.so Rsvm.o cmeans.o cshell.o floyd.o svm.o -L/usr/lib/R/lib -lR
installing to /usr/local/lib/R/site-library/e1071/libs
** R
** inst
** preparing package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
   ‘svmdoc.Rnw’ 
   ‘svminternals.Rnw’ 
** testing if installed package can be loaded

* DONE (e1071)

The downloaded source packages are in
	‘/tmp/RtmpOnl3Xn/downloaded_packages’
> 
