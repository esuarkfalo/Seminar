tableextension 50100 "CSD Resource Extemsion" extends Resource
{
    fields
    {
        modify("Type")
        {
            OptionCaption = 'Instructor,Room';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            MinValue = 0;
            BlankZero = true;
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
            MinValue = 0;
        }
    }
    
    var
        myInt: Integer;
}