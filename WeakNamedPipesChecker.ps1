$pipes = gci \\.\pipe\
foreach($p in $pipes.name){
	$ac = .\\accesschk64.exe -w ("\Pipe\" + $p) -v 
	if(echo $ac | findstr "WRITE_DAC"){
		echo $ac
	}
}