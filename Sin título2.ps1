
write-host "1.Listar grupos"
write-host "2.Ver miembros de un grupo"
write-host "3.Nombre del grupo a crear"
write-host "4.nombre del grupo a eliminar"
write-host "5.Nombre del grupo cuyo miembro se va a crear"
write-host "6.Nombre del grupo cuyo usuario se va a elimiar"
write-host "7.Salir"
$opcion=read-host "Selecciona opción"

while ($opcion -le 7) {

switch ($opcion) {
1 { get-LocalGroup | fl
}
2 { $nombre=read-host "Introduzca el nombre del grupo para ver miembros"
get-LocalGroupMember $nombre 
}
3 { $nombre2=read-host "Introduzca el nombre del grupo a crear"
New-LocalGroup $nombre2
}
4 { $nombre3=read-host "Introduzca el grupo que quieres eliminar"
remove-localGroup $nombre3
}
5 { $usuario=read-host "Introduzca el nombre del usuario que quiieres eliminar"
$nombre4=read-host "Introduzca el nombre del grupo"
Add-LocalGroupMember $nombre4 -Member $usuario
}
6 { $usuario1=read-host "Introduzca el usuario que quieres introducir "
$nombre5=read-host "Introduzca el nombre del grupo"
Add-LocalGroupMember $nombre5 -Member $usuario1
}
7 { write-host "Salir"
exit
}
}
}




