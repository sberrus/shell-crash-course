#!/bin/bash
while true
do 
    clear
    color=""
    porcentaje=$(df -h --output=pcent . | nawk "NR==2 {print $1}" | nawk -F % '{print $1}'| sed -e 's/^ *//' -e 's/ *$//')
    if (( porcentaje < 40 )); then
      color="\033[32m"  
    elif (( porcentaje >= 40 && porcentaje <= 60 )); then
      color="\033[31m"  
    else
      color="\033[31m"  
    fi
    LAST_UPDATE="$(date +%T)"
    CURRENT_SPACE="$(df -h .)"
    
    echo "Last Update: $LAST_UPDATE"
    echo -e "-------------------------\n"
    echo -e "${color}LA MÁQUINA ESTA AL ${porcentaje}% \033[0m \n"
    echo -e "-------------------------\n"
    echo -e "${color}$CURRENT_SPACE \033[0m"
    sleep 15
done

# p015 - LIQD117 de clon. paso cancelado