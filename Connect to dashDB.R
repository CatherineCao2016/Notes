library(ibmdbR)

dsn_driver <- "BLUDB" 
dsn_database <- "BLUDB"  
dsn_hostname <-  ""  
dsn_port <- "50000"  
dsn_protocol <- "TCPIP"  
dsn_uid <- ""
dsn_pwd <- ""

conn_path <- paste(dsn_driver,  
                   ";DATABASE=",dsn_database,
                   ";HOSTNAME=",dsn_hostname,
                   ";PORT=",dsn_port,
                   ";PROTOCOL=",dsn_protocol,
                   ";UID=",dsn_uid,
                   ";PWD=",dsn_pwd,sep="")

ch <- idaConnect(conn_path)  
idaInit(ch)  

library(ibmdbR)

# connect to project dashDB

dsn_driver <- "BLUDB" 
dsn_database <- "BLUDB"  
dsn_hostname <-  "dashdb-entry-yp-dal09-10.services.dal.bluemix.net"  
dsn_port <- "50000"  
dsn_protocol <- "TCPIP"  
dsn_uid <- "dash13990"
dsn_pwd <- "a8ae96f334fb"

conn_path <- paste(dsn_driver,  
                   ";DATABASE=",dsn_database,
                   ";HOSTNAME=",dsn_hostname,
                   ";PORT=",dsn_port,
                   ";PROTOCOL=",dsn_protocol,
                   ";UID=",dsn_uid,
                   ";PWD=",dsn_pwd,sep="")

con <- idaConnect(conn_path)  
idaInit(con)  

Dataset3 <- read.table("~/Dataset3.txt", sep = ",", header = TRUE)

idaSave(con, Dataset3, tblName = "Dataset3", rowName = "", conType = "odbc")
