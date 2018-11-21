page 50140 "CSD Seminar Manager Activities"
{
    PageType = CardPart;
    SourceTable = "CSD Seminar Cue";
    Caption='Seminar Manager Activities';
    InsertAllowed=false;
    DeleteAllowed=false;

    layout
    {
        area(content)
        {
            cuegroup(Registrations)
            {
                Caption='Registrations';
                field(Planned;Planned)
                {
                }
                field(Registered;Registered)
                {

                }
                actions
                {
                    action(New)
                    {
                        Caption='New';
                        RunObject=page "CSD Seminar Registration";
                        RunPageMode=Create;
                    }
                }
            }                
            cuegroup("For Posting")
            {
                field(Closed;Closed)
                {

                }
            }
        }
    }
    
    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;        
    end;
}