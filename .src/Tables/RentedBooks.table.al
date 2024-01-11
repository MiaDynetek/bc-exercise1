table 50705 RentedBooks
{
    DataClassification = ToBeClassified;
    Caption = 'Rented Books';
    
    fields
    {
        field(1;"Rent ID"; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;"Book Status"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(3;"Date Rented"; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(4;"Customer ID"; Integer)
        {
            TableRelation = "O365 Customer"."No.";
            DataClassification = ToBeClassified;
            
        }
        field(5;"Book ID"; Integer)
        {
            TableRelation = Library."Book ID";
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
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}