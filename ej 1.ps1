clear-host
if($args.count -ne 3){
write-host "Tienes que pasar 3 parámetros"
}
$opcion=read-host "Elige una opción"
switch ($args.count){
0 { get-content 
write-host "mostar contenido del fichero"  
}
1 { 
select-object -Property name,creationTime | Where-Object -eq $args[1]
write-host "El nombre y la fecha de creación de este fichero"
}
2 { cd C:\
get-childitem | where name -eq  $args[2]
write-host "Ya existe un fichero con igual nombre"
}
default { write-host "Parámetro no válido"
}
}








