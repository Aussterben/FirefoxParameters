#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

ctrl_c(){
  echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Cancelando Procesos...${endColour}
  sleep 2
  echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Procesos Cancelados!${endColour}
  exit 1
}

trap ctrl_c SIGINT

opciones(){
 case $1 in 
  -f)
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Abriendo Firefox en...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 5...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 4...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 3...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 2...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 1...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Firefox se ha abierto correctamente!${endColour}
    sleep 1
    firefox & 2>/dev/null
    ;;
  -k)
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Abriendo una Kitty en...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 5...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 4...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 3...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 2...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 1...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} La terminal Kitty se ha abierto correctamente!${endColour}
    sleep 1
    kitty & 2>/dev/null
    ;;
  -g)
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Abriendo una gnome-terminal en...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 5...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 4...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 3...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 2...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 1...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} La terminal gnome-terminal se ha abierto correctamente!${endColour}
    sleep 1
    gnome-terminal & 2>/dev/null
    ;;
  -d)
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Descargando${endColour}${redColour} figlet${endColour}${grayColour} en...${endColour}
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 5...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 4...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 3...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 2...${endColour}
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} 1...${endColour}
    sleep 1
    sudo apt install figlet -y
    sleep 1
    echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Descarga exitosa!...${endColour}
    ;;
  *)
    figlet Bienvenido
    echo -e "\n"${yellowColour} [?]${endColour}${grayColour} Uso:${endColour}
    echo -e "\n\t"${yellowColour}[+]${endColour}${grayColour} ${endColour}${redColour}-f]${endColour}${grayColour} Para abrir Firefox${endColour}
    echo -e "\n\t"${yellowColour}[+]${endColour}${grayColour} ${endColour}${redColour}-k]${endColour}${grayColour} Para abrir una terminal Kitty${endColour}
    echo -e "\n\t"${yellowColour}[+]${endColour}${grayColour} ${endColour}${redColour}-g]${endColour}${grayColour} Para abrir una terminal gnome-terminal${endColour}
    echo -e "\n\t"${yellowColour}[+]${endColour}${grayColour} ${endColour}${redColour}-d]${endColour}${grayColour} Para descargar${endColour}${redColour} figlet${endColour}
    echo -e "\n\n"${yellowColour}[!]${endColour}${grayColour} Recuerda actualizar tu ${blueColour}OS!${endColour}
    echo -e ${yellowColour}[!]${endColour}${grayColour} Recuerda instalar${endColour}${redColour} figlet${endColour} con ${redColour}sudo apt install figlet${endColour} o con el parámetro ${redColour}-d${endColour}
 esac   
}

opciones $1
