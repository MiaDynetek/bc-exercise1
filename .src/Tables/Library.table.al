table 50700 Library
{
    Caption = 'Library';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10; "Book ID"; Integer)
        {
            AutoIncrement = true;
            Caption = '';
        }
        field(20; "Title"; Text[50])
        {
            Caption = '';
            NotBlank = true;   
        }
        field(30; "Author"; Text[50])
        {
            Caption = '';
            NotBlank = true;   
        }
        field(40; "Rented"; Boolean)
        {
            Caption = '';
            ObsoleteState = Pending;
        }
         field(120; "Series"; Integer)
        {
            TableRelation = BookSeries."Series ID";
            Caption = '';
            NotBlank = true;   
        }
        field(50; "Genre"; Text[50])
        {
            Caption = '';
            NotBlank = true;   
        }
        field(60; "Publisher"; Text[50])
        {
            Caption = '';
            NotBlank = true;   
        }
        field(70; "Book Price"; Text[50])
        {
            Caption = '';
            NotBlank = true;   
        }
        field(80; "Publication Date"; Date)
        {
            Caption = '';
            NotBlank = true;   
        }
        field(90; "Pages"; Integer)
        {
            Caption = '';
            NotBlank = true;   
        }
        field(150; "Prequel"; Text[50])
        {
            Caption = '';
            NotBlank = true;   
        }
        field(160; "Sequel"; Text[50])
        {
            Caption = '';
            NotBlank = true;   
        }
        field(100; "Prequel ID"; Integer)
        {
            Caption = '';
            NotBlank = true;   
        }
        field(110; "Sequel ID"; Integer)
        {
            Caption = '';
            NotBlank = true;   
        }
       
        field(140; "Rented Count"; Integer)
        {
            Caption = '';
            NotBlank = true;   
        }
       
        field(170; "Edit Sequel"; Boolean)
        {
            Caption = '';
            NotBlank = true;   
        }

        field(180; "Status"; Enum Status)
        {
            Caption = '';
            NotBlank = true;   
        }
    }
    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
        // key(FK; "Series")
        // {
        //    Unique = true; 
        // }
    }
    procedure AddBookSequel(record: Record Library) : Record Library
    var
        newRecord: Record Library;
        newRentedBook: Page Library;
    begin
        newRecord.Init();
        newRecord.Author := record.Author;
        newRecord.Series := record.Series;
        newRecord.Genre := record.Genre;
        newRecord.Publisher := record.Publisher;
        newRecord.Publisher := record.Publisher;
        newRecord.Prequel := record.Title;
        newRecord."Prequel ID" := record."Book ID";
        newRecord."Edit Sequel" := true;
        newRecord.Insert();
     
        newRentedBook.SetRecord(newRecord);
        newRentedBook.Run();
       
        exit(newRecord); 
    end;

    procedure OpenLibraryPage()
    var
        Library: Page LibraryBookList;
    begin
        Library.Editable(false);
        Library.Run();
    end;

    
    // procedure OpenRentingPage(record: Record Library) : Record Library
    // var
    //     simpleText: Text[50];
    // begin
    //     simpleText := record.Title;
    //     Message(simpleText);
        
    // end;
}
