pageextension 50101 "CSD Resource List Extension" extends "Resource List"
{
    layout
    {
        addafter("Type")
        {
            field("CSD Resource Type";"CSD Resource Type")
            {
                Visible = ShowType;
            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
                visible = ShowMaxField;
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnOpenPage();
    begin
        ShowType := (GetFilter("Type") = '');
        ShowMaxField := (GetFilter("Type") = format("Type"::machine));
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;
}