clear-host
if ($args.Count -eq 0) {
$Lusuarios = get-content 
}
else{
$Lusuarios = get-content $args[0]
}

