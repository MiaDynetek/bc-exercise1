table 50705 RentedBooks
{
    DataClassification = ToBeClassified;
    Caption = 'Rented Books';
    
    fields
    {
        field(1;"Rent ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2;"Book Rented"; Boolean)
        {
            DataClassification = ToBeClassified;
            
        }
        field(3;"Date Rented"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;   
            
        }
        field(6;"Customer Name"; Text[50])
        {
            TableRelation = Customer.Name;
            DataClassification = ToBeClassified;
            NotBlank = true;   
        }
        field(7;"Book ID"; Integer)
        {
            TableRelation = Library."Book ID";
            DataClassification = ToBeClassified;
        }
        field(8;"Book Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; "Rent ID")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // fieldgroup(DropDown;"Book Status")
        // {
            
        // }
    }
    procedure RentBook(record: Record Library) : Record RentedBooks
    var
        
        simpleText: Text[50];
        newRecord: Record RentedBooks;
        newRentedBook: Page RentBook;
    begin
        simpleText := record.Title;
        // Rec."Book Name" := record.Title;
        newRecord.Init();
        newRecord."Book Name" := simpleText;
        newRecord."Book ID" := record."Book ID";
        newRecord."Date Rented" := System.Today();
        newRecord.Insert();
        //RentedBook1 := newRecord;
        // newRecord.setContext();
        //Message(simpleText); 
        newRentedBook.SetRecord(newRecord);
        newRentedBook.Run();
        //."Book Name" := simpleText;  
       // Rec."Rent ID" := xRec."Rent ID";
        exit(newRecord); 
    end;

    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        rentBook2.Run();
    end;
    
    trigger OnModify()
    begin
        //LibraryBook.Rented := Rec."Book Rented";
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    var
        RentedBook1: Record RentedBooks;
        rentBook2: Page RentBook;

}