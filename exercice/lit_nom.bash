#î

A=$(grep $USER /etc/passwd | cut -d : | read ident passe uid gid nom reste)
echo $A

