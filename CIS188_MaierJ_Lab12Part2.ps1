#CIS188 Module 12 Lab 12 Part 2
#Powershell Script
#Author: Jennifer Maier

#This program takes the first name, last name, and phone numbers in the employees.csv file and creates and move it into a new phone.csv file.

Import-Csv -Path OneDrive\Documents\powershell\employees.csv | Select-Object -Property fname, lname, phone | Export-Csv -Path OneDrive\Documents\powershell\phone.csv
Import-Csv -Path OneDrive\Documents\powershell\phone.csv