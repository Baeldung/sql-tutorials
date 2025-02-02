Sub GenerateSQL() 
  Dim ws As Worksheet 
  Dim rowCount As Long 
  Dim sql As String 
  Dim outputFile As String 
  Dim i As Long 
  Dim id As Variant, name As String, national_id As String, birth_date As String, enrollment_date As String, graduation_date As String, gpa As Variant 
  
  Set ws = ThisWorkbook.Sheets(1) 
  rowCount = ws.Cells(ws.Rows.Count, 1).End(xlUp).Row 
  outputFile = "C:\Users\USER\Downloads\InsertScripts.sql" 
  Open outputFile For Output As #1
  
  For i = 2 To rowCount
    id = ws.Cells(i, 1).Value 
    name = ws.Cells(i, 2).Value 
    national_id = ws.Cells(i, 3).Value 
    birth_date = ws.Cells(i, 4).Value 
    enrollment_date = ws.Cells(i, 5).Value 
    graduation_date = ws.Cells(i, 6).Value 
    gpa = ws.Cells(i, 7).Value

    If IsEmpty(id) Or IsEmpty(name) Then GoTo SkipRow 
    name = Replace(name, "'", "''")

    sql = "INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) VALUES (" & _ id & ", '" & name & "', '" & national_id & "', '" & birth_date & "', '" & enrollment_date & "', '" & graduation_date & "', " & gpa & ");"
    Print #1, sql

SkipRow: 
  Next i 
  Close #1 
  MsgBox "SQL scripts generated successfully!" 
End Sub
