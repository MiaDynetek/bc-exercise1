page 50701 Library
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Library;
    Caption = 'Book Specifications';
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Title"; "Title")
                {
                    ApplicationArea = All;
                    
                }
                field("Author"; "Author")
                {
                    ApplicationArea = All;
                    
                }
                field("Rented"; "Rented")
                {
                    ApplicationArea = All;
                    
                }
                field("Series"; "Series")
                {
                    ApplicationArea = All;
                    
                }
                field("Genre"; "Genre")
                {
                    ApplicationArea = All;
                    
                }
                field("Publisher"; "Publisher")
                {
                    ApplicationArea = All;
                    
                }
                field("Book Price"; "Book Price")
                {
                    ApplicationArea = All;
                    
                }
                field("Publication Date"; "Publication Date")
                {
                    ApplicationArea = All;
                    
                }
                field("Pages"; "Pages")
                {
                    ApplicationArea = All;
                    
                }
                field("Series Name"; "Series Name")
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}