inittest arscript-3 tc/arscript-3
extshar ${TESTDIR}
extshar ${RLTDIR}
runcmd "${AR} -M < kmkmissing.a.ar-script.bsd" work true
rundiff false
runcmd "plugin/teraser -c -t arscript-3 kmkmissing.a" work false
runcmd "plugin/ardiff -cnlt arscript-3 ${RLTDIR}/kmkmissing.a kmkmissing.a" work false
