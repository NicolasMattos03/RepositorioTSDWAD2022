# Generamos la tupla
Historial2=(23500, 5960, 2300, 10200, 8900)

# Recorremos la tupla
for i in Historial2:
    #Sumamos los elementos
    total =+ i

# Imprimimos el resultado
print ("Se han gastado ",total, "$ en atención a Frida")

# Creamos la función
def contar(servicios):
    cont=0
# Recorremos la tupla 
    for i in servicios:
    # Verificamos que sea mayor de 5000
        if (i) > 5000:
            cont += 1
    # Realizamos/imprimimos el retorno
    return "Las facturas de más de 5.000$ son", cont

#Ejecutamos la funcion
print(contar(Historial2))