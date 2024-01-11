page 50703 LibraryRoleCentre
{

    PageType = RoleCenter;
    Caption = 'Library Books';

    layout
    {
        area(RoleCenter)
        {
        //     
            // group(Group1)
            // {
            //     part(part1; "TestActionTile")
            //     {
            //         ApplicationArea = All;
            //     }
            // }
            // part(Headline; "Headline RC Big Boss")
            // {
            // }
            // part(Activities; "Big Boss Activities")
            // {
            // }
            // part("Help And Chart Wrapper"; "Help And Chart Wrapper")
            // {
            // }
            // part("Report Inbox Part"; "Report Inbox Part")
            // {
            // }
            // part("Power BI Report Spinner Part"; "Power BI Report Spinner Part")
            // {
            // }
        }
    }
}

profile MyProfile
{
    ProfileDescription = 'Test Profile';
    RoleCenter = LibraryRoleCentre;
    Caption = 'Test Profile';
}

