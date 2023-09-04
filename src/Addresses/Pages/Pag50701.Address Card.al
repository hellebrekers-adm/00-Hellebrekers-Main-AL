page 50701 "Hellebrekers Address Card"
{
    ApplicationArea = All;
    Caption = 'Address Card';
    PageType = Card;
    SourceTable = HellebrekersAddress;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
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
