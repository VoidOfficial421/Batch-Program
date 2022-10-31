intAnswer = _
    Msgbox("Would you like to start a Batch OS Virtual Environment?", _
        vbYesNo, "Start Batch OS")
If intAnswer = vbYes Then
    CreateObject("wscript.shell").run "placeholdermessage.vbs"
Else
    Msgbox "Ok. Closing Program."
End If