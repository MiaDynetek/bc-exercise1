page 50701 Library
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Library;
    Caption = 'Book Specifications';
    DelayedInsert = true;
    
    layout
    {
        area(Content)
        {
            group("Book Information")
            {
                field("Title"; "Title")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Rec."Title" = '' then
                        begin
                            Message('Please enter the book title.'); 
                        end;
                    end;
                }
                field("Author"; "Author")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Rec."Author" = '' then
                        begin
                            Message('Please enter the book Author.'); 
                        end;
                    end;
                }
                field("Rented"; "Rented")
                {
                    ApplicationArea = All;
                    
                }
                field("Series"; Rec."Series")
                {
                    Lookup = true;
                    TableRelation = BookSeries;
                    ToolTip = 'Specifies the value of the Series Name field.';
                    
                }
                field("Genre"; "Genre")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Rec."Genre" = '' then
                        begin
                            Message('Please enter the book Genre.'); 
                        end;
                    end;
                }
                field("Publisher"; "Publisher")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Rec."Publisher" = '' then
                        begin
                            Message('Please enter the book Publisher.'); 
                        end;
                    end;
                }
                field("Book Price"; "Book Price")
                {
                    ApplicationArea = All;
                     trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Rec."Book Price" = '' then
                        begin
                            Message('Please enter the book Price.'); 
                        end;
                    end;
                }
                field("Publication Date"; "Publication Date")
                {
                    ApplicationArea = All;
                    
                }
                field("Pages"; "Pages")
                {
                    ApplicationArea = All;
                }
                field("Prequel"; "Prequel")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                 field("Sequel"; "Sequel")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Edit Sequel"; "Edit Sequel")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Prequel ID"; "Prequel ID")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Sequel ID"; "Sequel ID")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                
            }
        }
    }

    trigger OnModifyRecord(): Boolean
    var
        currentBook: Integer;
        libraryBooks: Record Library;
    begin
        if("Edit Sequel" = true) then
        begin
        libraryBooks.SetFilter("Book ID", '=%1', Rec."Prequel ID");
        libraryBooks.FindFirst();
        // Message(libraryBooks.Title);
        libraryBooks.Sequel := Rec.Title;
        libraryBooks."Sequel ID" := Rec."Book ID";
        libraryBooks.Modify();
        end;
        //Message('Works');
    end;

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;
                
    //             trigger OnAction()
    //             begin
                    
    //             end;
    //         }
    //     }
    // }
    
    var
        myInt: Integer;
}