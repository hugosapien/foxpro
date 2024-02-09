** CREA TABLA DE DESCRIPCION DE SERVIDORES.
*WAIT WINDOW "Creando tabla " nowait
IF USED("local_parametros")
   USE IN local_parametros
ENDIF

SET SAFETY off
CREATE TABLE local_parametros (servidor c(10) , server c(40), user c(20), bd c(20),pass c(20), puerto c(4))
USE local_parametros
APPEND BLANK
replace servidor WITH "Servidor1"
replace server   WITH "67.222.146.105"
replace bd       WITH "albatros_boletos"
replace user     WITH "albatros_boletos"
replace pass     WITH "hugo3000"
replace puerto   WITH "3306"
SET SAFETY on

APPEND BLANK
replace servidor WITH "Servidor2"
replace server   WITH "boletos.db.11672600.hostedresource.com"
replace bd       WITH "boletos"
replace user     WITH "boletos"
replace pass     WITH "Jueves@Enero2"
replace puerto   WITH "3306"

SET SAFETY on


*USE local_corridas IN 0
GO top
*browse



PUBLIC lnhandle

PUBLIC lcStringCnxRemoto

PUBLIC FOLIO_PUBLICO

PUBLIC mnivel
PUBLIC MUSUARIO
PUBLIC MOFICINA

PUBLIC xchoferes
PUBLIC MVERSION
PUBLIC MVERSIONCIUDAD

PUBLIC xcorridas
DIMENSION xcorridas(1)
PUBLIC xtarifas
DIMENSION xtarifas(20)

PUBLIC ARREGLO_ACCIONES
PUBLIC ARREGLO_REFACCIONES
PUBLIC arreglo_tipoman
PUBLIC arreglo_paquetes
PUBLIC Z_SERVIDOR

PUBLIC ROL_1
PUBLIC ROL_2
PUBLIC ROL_3

ROL_1 = 1
ROL_2 = 1
ROL_3 = 1


PUBLIC FORMATO_BOLETO
formato_boleto = "boleto3"

PUBLIC contrato
contrato = "CONTRATO...CONTRATO..."

DIMENSION ARREGLO_ACCIONES(20)
DIMENSION ARREGLO_REFACCIONES(20)
DIMENSION ARREGLO_tipoman(20)
DIMENSION ARREGLO_partes(20)
DIMENSION ARREGLO_paquetes(20)
DIMENSION ARREGLO_kmsvida(20)

PUBLIC TOTAL_ASIENTOS
TOTAL_ASIENTOS=20

FOLIO_PUBLICO = 0


MUSUARIO = "h"
MOFICINA = "HMO"
MNIVEL   = 8
MVERSION = "V"
MVERSIONCIUDAD = "VERSIONCIU"

SET CENTURY on
SET DATE TO dmy
SET DELETED ON


lcStringCnxRemoto = "DRIVER={MySQL ODBC 3.51 Driver};" + ;
                    "SERVER=boletos.db.11672600.hostedresource.com;" + ;
                    "PORT=3306;" + ;
                    "UID=boletos;" + ;
                    "PWD=Jueves@Enero2;" + ;
                    "DATABASE=boletos;" + ;
                    "OPTIONS=131329;"

Z_SERVIDOR = "SERVIDOR2"
z_server   = "boletos.db.11672600.hostedresource.com"
z_user     = "boletos"
z_bd       = "boletos"
z_pass     = "Jueves@Enero2"
z_puerto   = "3306"



IF .F.
Z_SERVIDOR = "SERVIDOR1"
z_server   = "albatrosexpress.mx"
z_user     = "albatros"
z_bd       = "albatros_boletos"
z_pass     = "Failmail2014"
z_puerto   = "3306"
ENDIF

IF .F.
Z_SERVIDOR = "SERVIDOR3"
z_server   = "173.254.28.180"
z_user     = "albatrp5"
z_bd       = "albatrp5_boletos"
z_pass     = "Cascada-2006"
z_puerto   = "3306"
ENDIF

IF .F.
Z_SERVIDOR = "SERVIDOR1"
z_server   = "albatrosmexico.com"
z_user     = "albatros_web"
z_bd       = "albatros_sistema"
z_pass     = "Hugo@3000"
z_puerto   = "3306"
ENDIF

IF .T.
 Z_SERVIDOR = "SERVIDOR4 albatrosmexico2.com"
 z_server   = "albatrosmexico2.com"
 z_user     = "albatrosmexico2"
 z_bd       = "albatros_hugo"
 z_pass     = "Cascada-2006"
 z_puerto   = "3306"
ENDIF

IF .T.
 Z_SERVIDOR = "SAGA albatrosmexico2.com"
 z_server   = "paguenme.com"
 z_user     = "vtl0iyzmdbs5"
 z_bd       = "saga"
 z_pass     = "Cascada-2006"
 z_puerto   = "3306"
ENDIF


IF .F.

 Z_SERVIDOR = "SERVIDOR4 expressalbatros.com"
 z_server   = "expressalbatros.com"
 z_user     = "tony_boletos"
 z_bd       = "tony_boletos"
 z_pass     = "Boletos@2020"
 z_puerto   = "3306"

ENDIF

IF .F.
 Z_SERVIDOR = "SERVIDOR4 paqueteria.com"
 z_server   = "expressalbatros.com"
 z_user     = "tony_consultas"
 z_bd       = "paqueteria"
 z_pass     = "Express2020#"
 z_puerto   = "3306"
ENDIF

 *$link = mysqli_connect('132.148.166.32', 'tony_consultas', 'Express2020#')


IF .F.
Z_SERVIDOR = "SERVIDOR4"
z_server   = "albatrosmexico.com"
z_user     = "albatros_usuario"
z_bd       = "albatros_sistema"
z_pass     = "Hugo@3000"
z_puerto   = "3306"
ENDIF

IF .F.
Z_SERVIDOR = "SERVIDOR5"
z_server   = "hugosapien.com"
z_user     = "hugo"
z_bd       = "sistemahugo"
z_pass     = "Hugo@3000"
z_puerto   = "3306"
ENDIF



IF .F.
Z_SERVIDOR = ALLTRIM(local_parametros.Servidor)
z_server   = ALLTRIM(local_parametros.Server)
z_user     = ALLTRIM(local_parametros.User)
z_bd       = ALLTRIM(local_parametros.Bd)
z_pass     = ALLTRIM(local_parametros.Pass)
z_puerto   = ALLTRIM(local_parametros.Puerto)
ENDIF


*xcadena = "DRIVER={MySQL ODBC 3.51 Driver};" + "SERVER=" + z_ip;

*wait window xcadena

lcStringCnxRemoto = "DRIVER={MySQL ODBC 3.51 Driver};" + ;
                    "SERVER="    + z_server + ";" + ; 
                    "PORT="      + z_puerto + ";" + ;
                    "UID="       + z_user   + ";" + ;
                    "PWD="       + z_pass   + ";" + ;
                    "DATABASE="  + z_bd     + ";" + ;
                    "OPTIONS=131329;"


*OKOKOKOKlcStringCnxRemoto = "DRIVER={MySQL ODBC 3.51 Driver};" + ;
                    "SERVER=67.222.146.105;" + ;
                    "PORT=3306;" + ;
                    "UID=albatros_boletos;" + ;
                    "PWD=hugo3000;" + ;
                    "DATABASE=albatros_boletos;" + ;
                    "OPTIONS=131329;"

 
 WAIT WINDOW lcStringCnxRemoto TIMEOUT 3
 
*lcStringCnxRemoto = "DRIVER={MySQL ODBC 3.51 Driver};" + ;
                    "SERVER=187.141.173.247;" + ;
                    "PORT=3306;" + ;
                    "UID=root;" + ;
                    "PWD=1234;" + ;
                    "DATABASE=boletos;" + ;

*lcStringCnxRemoto = "DRIVER={MySQL ODBC 3.51 Driver};" + ;
                    "SERVER=consultoralogos.com;" + ;
                    "PORT=3306;" + ;
                    "UID=consul66_hugo;" + ;
                    "PWD=cascada2006;" + ;
                    "DATABASE=consul66_hugo;" + ;
                    "OPTIONS=131329;"
                    
                    
                    
*lcStringCnxRemoto = "DRIVER={MySQL ODBC 3.51 Driver};" + ;
                    "SERVER=boletos.db.11672600.hostedresource.com;" + ;
                    "PORT=3306;" + ;
                    "UID=boletos;" + ;
                    "PWD=Jueves@Enero2;" + ;
                    "DATABASE=boletos;" + ;
                    "OPTIONS=131329;"


*lcStringCnxRemoto = "DRIVER={MySQL ODBC 3.51 Driver};" + ;
                    "SERVER=184.168.152.5;" + ;
                    "PORT=3306;" + ;
                    "UID=boletos;" + ;
                    "PWD=Jueves@Enero2;" + ;
                    "DATABASE=boletos;" + ;
                    "OPTIONS=131329;"
                    


SQLSETPROP(0,"DispLogin" , 3 )
lnHandle = SQLSTRINGCONNECT(lcStringCnxRemoto)





*WAIT WINDOW lnhandle TIMEOUT 1


RETURN

*insert into bole_electronica (id,fecha,nombre,corrida,autobus,importetotal,origen,destino) select id,fecha,pasajero,corrida,camion,importe,origen,destino from boletos where fecha="20141026";
