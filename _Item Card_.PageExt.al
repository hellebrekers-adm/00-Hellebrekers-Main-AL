pageextension 50701 "Item Card" extends "Item Card"
{
    layout
    {
        addLast(content)
        {
            usercontrol(Border; BorderShineAddin)
            {
                applicationArea = all;

                trigger OnControlAddinReady()
                begin
                end;
            }
        }
    }
}
