clear-host
write-host " Menu "
write-host "1.Introduzca el nombre del fichero"
write-host "2.Mostrar el nombre y la fecha de creación del fichero"
write-host "3.Borrar el fichero "
write-host "4.Salir"
$opcion = Read-host "Tu opcion"
if ($opcion -eq 1 -or $opcion -le 4){

switch ($opcion) {
1 { $fichero=read-host "Introduce el nombre del fichero"
    new-item $fichero
}
2 { $fichero=read-host "nombre"
get-childitem | select-object -Property Name,CreationTime | where-object -property name -eq $fichero
}
3 { $fichero=read-host "borrar"
remove-item $fichero
}
4 { write-host "Salida"
exit
}
}
}




