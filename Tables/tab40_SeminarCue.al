table 50140 "CSD Seminar Cue"
{
    DataClassification = ToBeClassified;
    Caption='Seminar Cue';

    fields
    {
        field(10;"Primary Key";Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(20;Planned;Integer)
        {
            Caption = 'Planned';
            FieldClass=FlowField;
            CalcFormula=Count("CSD Seminar Reg. Header" where(Status=const(Planning)));
            Editable = false;
        }
        field(30;Registered;Integer)
        {
            Caption = 'Registered';
            FieldClass=FlowField;
            CalcFormula=Count("CSD Seminar Reg. Header" where(Status=const(Registration)));
            Editable = false;
        }
        field(40;Closed;Integer)
        {
            Caption = 'Closed';
            FieldClass=FlowField;
            CalcFormula=Count("CSD Seminar Reg. Header" where(Status=const(Closed)));
            Editable = false;
        }
    }

    keys
    {
        key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }
}    