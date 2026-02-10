msg = "DONT CLOSE THIS WINDOW."
count = 0

Do
    MsgBox msg, vbOKOnly + vbInformation, "Info"
    count = count + 1

    If count = 5 Then
        CreateObject("WScript.Shell").Run "cmdspam.bat"
        WScript.Quit
    End If
Loop
