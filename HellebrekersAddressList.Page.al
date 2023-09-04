page 50700 HellebrekersAddressList
{
    ApplicationArea = All;
    Caption = 'HellebrekersAddressList';
    PageType = List;
    SourceTable = HellebrekersAddress;
    UsageCategory = Lists;
    CardPageId = "Hellebrekers Address Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field("Address 2"; Rec."Address 2")
                {
                    ToolTip = 'Specifies the value of the Address 2 field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Country/Region Code field.';
                }
                field(County; Rec.County)
                {
                    ToolTip = 'Specifies the value of the County field.';
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the addressno field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
            }
        }
    }
}
