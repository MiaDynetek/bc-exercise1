table 50700 Library
{
    Caption = 'Library';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Book ID"; Integer)
        {
            Caption = '';
        }
        field(2; "Title"; Text[50])
        {
            Caption = '';
        }
        field(3; "Author"; Text[50])
        {
            Caption = '';
        }
        field(4; "Rented"; Text[50])
        {
            Caption = '';
        }
        field(5; "Series"; Text[50])
        {
            Caption = '';
        }
        field(6; "Genre"; Text[50])
        {
            Caption = '';
        }
        field(7; "Publisher"; Text[50])
        {
            Caption = '';
        }
        field(8; "Book Price"; Text[50])
        {
            Caption = '';
        }
        field(9; "Publication Date"; Date)
        {
            Caption = '';
        }
        field(10; "Pages"; Integer)
        {
            Caption = '';
        }
        field(11; "Prequel ID"; Integer)
        {
            Caption = '';
        }
        field(12; "Sequel ID"; Integer)
        {
            Caption = '';
        }
        field(13; "Series Name"; Text[50])
        {
            Caption = '';
        }
        field(14; "Series ID"; Integer)
        {
            TableRelation = BookSeries."Series ID";
            Caption = '';
        }
    }
  
    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
        key(FK; "Series ID")
        {
            Unique = true;
        }
    }
    
}
