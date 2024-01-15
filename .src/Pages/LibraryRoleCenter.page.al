page 50712 LibraryRoleCenter
{

    PageType = RoleCenter;
    Caption = 'Library Role Center';

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(part1; "Open Library")
                {
                    ApplicationArea = All;
                }
            }
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
    ProfileDescription = 'Library Profile';
    RoleCenter = LibraryRoleCenter;
    Caption = 'Library Profile';
}

