page 50702 PageUpdaterControlAddinCard
{
    ApplicationArea = All;
    Caption = 'ControlAddinCard';
    PageType = CardPart;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                usercontrol(PageUpdater; PageUpdaterControlAddin)
                {
                    trigger OnControlAddInReady();
                    begin
                        CurrPage.PageUpdater.StartUpdateLoop(2000);
                    end;
                    trigger OnUpdate()
                    begin
                        CurrPage.Update;
                    end;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Update)
            {
                Caption = 'Update';
                Image = Refresh;
                ApplicationArea = All;

                trigger OnAction();
                begin
                    CurrPage.Update;
                end;
            }
        }
    }
}
