page 50705 LibraryBookList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Library";
    Caption = 'Library Books';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.';
                }   
                field(Author; Rec.Author)
                {
                    ToolTip = 'Specifies the value of the Author field.';
                }
                field(Genre; Rec.Genre)
                {
                    ToolTip = 'Specifies the value of the Genre field.';
                }
                field("Publication Date"; Rec."Publication Date")
                {
                    ToolTip = 'Specifies the value of the Publication Date field.';
                }
                field(Publisher; Rec.Publisher)
                {
                    ToolTip = 'Specifies the value of the Publisher field.';
                }
                field(Rented; Rec.Rented)
                {
                    ToolTip = 'Specifies the value of the Rented field.';
                }
                field("Series Name"; Rec."Series Name")
                {
                    ToolTip = 'Specifies the value of the Series Name field.';
                }
            }
        }
    } 
    actions
    {
        area(Processing)
        {
            action("Import Records ")
            {
                Caption = 'Import Records';
                ToolTip = 'Import Records';
                ApplicationArea = All;
                Image = Import;

                trigger OnAction()
                var
                   
                begin
                    Message('Works');
                end;
            }
        }
    }
}