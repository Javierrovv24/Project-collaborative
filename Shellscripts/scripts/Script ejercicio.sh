  GNU nano 4.8                                                                                     prueba                                                                                                  
#!/bin/bash
for (( i=i; i <= 11; i++ )); do

        echo "#!/bin/bash" > ~/script/ej$i.sh
        chmod +x ej$i.sh
done

