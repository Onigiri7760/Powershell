#CIS188 Module 12 Lab 12 Part 1
#Powershell Script
#Author: Jennifer Maier

#This program creates a pdf and images folder and takes the pdf files that are found in the zipfile files into the pdf folder and the jpg files into the images folder.

#Create new pdf and images folder
$imagesdirectory = New-Item -Path 'C:\Users\maier\OneDrive\Documents\CIS 188\powershell\images' -ItemType Directory
$pdfdirectory = New-Item -Path 'C:\Users\maier\OneDrive\Documents\CIS 188\powershell\pdf' -ItemType Directory

#Move pdf and jpg files into new folders
Get-ChildItem -Path 'C:\Users\maier\OneDrive\Documents\CIS 188\powershell\files\files' -Recurse -Include *.jpg | Move-Item -Destination 'C:\Users\maier\OneDrive\Documents\CIS 188\powershell\images'
Get-ChildItem -Path 'C:\Users\maier\OneDrive\Documents\CIS 188\powershell\files\files' -Recurse -Include *.pdf | Move-Item -Destination 'C:\Users\maier\OneDrive\Documents\CIS 188\powershell\pdf'