clear-host
if($args.count -ne 3){
write-host "Tienes que pasar 3 parámetros"
}
if ($args.count -eq 3) {
$opcion=read-host "Introduzca la opcion"

switch ($opcion){
1 { get-content $args[0]
}
2 { 
get-childitem | select-object -Property name,creationTime | Where-Object name -eq $args[1]

}
3 { get-childitem C:\| where name -eq  $args[2]

}
default { write-host "Parámetro no válido"
}
}
}








