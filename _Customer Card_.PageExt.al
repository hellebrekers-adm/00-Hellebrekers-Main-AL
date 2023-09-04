pageextension 50700 "Customer Card" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            usercontrol(Color; ColorPickerAddin)
            {
                ApplicationArea = All;

                trigger ColorPicked(ColorInfo: Text)
                begin
                    Message(ColorInfo);
                end;
            }
        }
        addLast(content)
        {
            usercontrol(Border; BorderShineAddin)
            {
                applicationArea = all;

                trigger OnControlAddinReady()
                begin
                end;
            }
            usercontrol(ColorPicker; ColorPickerAddin)
            {
                ApplicationArea = All;

                trigger OnControlAddinReady()
                begin
                end;
            }
        }
    }
}
