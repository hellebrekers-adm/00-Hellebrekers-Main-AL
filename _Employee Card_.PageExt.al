pageextension 50702 "Employee Card" extends "Employee Card"
{
    layout
    {
        addafter("Last Name")
        {
            usercontrol(Color; ColorPickerAddin)
            {
                ApplicationArea = All;

                trigger ColorPicked(ColorInfo: Text)
                begin
                    Rec.Color := ColorInfo;
                end;
            }
        }
    }
}
