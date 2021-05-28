*** Settings ***
Library   DatabaseLibrary
Library   OperatingSystem


Suite Setup  Connect To Database    pymysql     ${DBname}   ${Dbuser}   ${Dbpwd}    ${Dbhost}  ${Dbport}

Suite Teardown  Disconnect From Database


*** Variables ***

${DBname}   classicmodels
${Dbuser}   root
${Dbpwd}    root
${Dbhost}  127.0.0.1
${Dbport}   3306



*** Test Cases ***
Read Customerinfo table
   check if exists in database  select * from classicmodels.customerinfo where BookName='selenium';

Retrieve data from Customers Table
    @{queryresults}=    query       select * from classicmodels.customerinfo;
    log many     @{queryresults}
    log to console   ${queryresults}
    log to console   ${queryresults}[0]







