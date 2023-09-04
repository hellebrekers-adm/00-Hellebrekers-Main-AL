table 50700 HellebrekersAddress
{
    Caption = 'HellebrekersAddress';
    DataClassification = ToBeClassified;
    DataCaptionFields = "No.", Address, City, "Post Code", County, "Country/Region Code";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'addressno';
        }
        field(8; Address; Text[100])
        {
            Caption = 'Address';
        }
        field(9; "Address 2"; Text[100])
        {
            Caption = 'Address 2';
            Editable = false;
        }
        field(10; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF("Country/Region Code"=CONST(''))"Post Code".City
            ELSE IF("Country/Region Code"=FILTER(<>''))"Post Code".City WHERE("Country/Region Code"=FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode(City, "Post Code", County, "Country/Region Code");
            end;
            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                IsHandled:=false;
                OnBeforeValidateCity(Rec, PostCode, CurrFieldNo, IsHandled);
                if not IsHandled then PostCode.ValidateCity(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(11; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF("Country/Region Code"=CONST(''))"Post Code"
            ELSE IF("Country/Region Code"=FILTER(<>''))"Post Code" WHERE("Country/Region Code"=FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnLookup()
            begin
                PostCode.LookupPostCode(City, "Post Code", County, "Country/Region Code");
            end;
            trigger OnValidate()
            var
                IsHandled: Boolean;
            begin
                IsHandled:=false;
                OnBeforeValidatePostCode(Rec, PostCode, CurrFieldNo, IsHandled);
                if not IsHandled then PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(12; County; Text[30])
        {
            CaptionClass = '5,1,' + "Country/Region Code";
            Caption = 'County';
        }
        field(25; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";

            trigger OnValidate()
            begin
                PostCode.CheckClearPostCodeCityCounty(City, "Post Code", County, "Country/Region Code", xRec."Country/Region Code");
            end;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NewNoSeriesCode: Code[20];
    begin
        if rec."No." = '' then // If it's empty, initialize a new series using the NoSeriesManagement codeunit
            NoSeriesMgt.InitSeries('SIMPLE_ADDRESS_NO', '', Today(), "No.", NewNoSeriesCode);
    end;
    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidatePostCode(var Address: Record HellebrekersAddress; var PostCode: Record "Post Code"; CurrentFieldNo: Integer; var IsHandled: Boolean);
    begin
    end;
    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidateCity(var Address: Record HellebrekersAddress; var PostCode: Record "Post Code"; CurrentFieldNo: Integer; var IsHandled: Boolean);
    begin
    end;
    var PostCode: Record "Post Code";
    procedure GetFullAddres(): Text[250];
    var
        FullAdress: Text;
    begin
        if "Address" <> '' then FullAdress:="Address" + ', ';
        if "Address 2" <> '' then FullAdress:=FullAdress + "Address 2" + ', ';
        if "Post Code" <> '' then FullAdress:=FullAdress + "Post Code" + ', ';
        if "City" <> '' then FullAdress:=FullAdress + "City" + ', ';
        if "County" <> '' then FullAdress:=FullAdress + "County" + ', ';
        if "Country/Region Code" <> '' then FullAdress:=FullAdress + "Country/Region Code" + ', ';
        exit(FullAdress);
    end;
}
