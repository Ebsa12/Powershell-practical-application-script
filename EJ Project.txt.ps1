# Prompt the user to input their first name
$firstNameInput = Read-Host "Enter your first name"

# Compare the entered name to "Ebsa"
if ($firstNameInput -eq "Ebsa") {
    # If the entered name is "Ebsa", continue with the script
    Write-Host "Hello Ebsa, welcome to the PowerShell menu system. please make a choice from the displayed menu options:

1. Display version of Powershell
2. Create a new Folder
3. Create a New file
4. Print the 5 Most Recent Entries in the PowerShell Event log
5. Exit the menu system"

    $menuOptions ='1. Display version of PowerShell', '2. Create a New Folder', '3. Create a New File', '4. Print the 5 most recent entries in the PowerShell Event Log', '5. Exit the menu system'

    do {
        $choiceInput = Read-Host -Prompt "Please Enter your Choice"
    
        if ($choiceInput -eq '1') {
            $PSVersionTable
            Read-Host -Prompt "press enter to continue...."
            clear
        }
        elseif ($choiceInput -eq '2') {
            $folderNameInput = Read-Host -prompt "what is the name of the new folder you wish to create on drive C"
            New-Item -Path "C:\temp\" -Name "$folderNameInput" -ItemType Directory
            Read-Host -Prompt "press enter to continue...."
            clear
        }
        elseif ($choiceInput -eq '3') 
        {
            $fileNameInput = Read-Host -Prompt "what is the name of the file you wish to create?"
            New-Item -Path "C:\temp\" -Name "$fileNameInput" -ItemType file
            Read-Host -Prompt "press enter to continue...."
            clear
        }
        elseif ($choiceInput -eq '4') {
            Get-EventLog -LogName System -Newest 5
            Read-Host -Prompt "press enter to continue...."
            clear
        }
        elseif ($choiceInput -eq '5') {
            Write-Host "Have a GREAT day and thank you for using the PowerShell menu system!"
            exit
        }
    } while ($choiceInput -le '5')

    clear
    
}
else {
    Write-Host "Hello $firstNameInput, you are not authorized to use this system" -fore red
}
