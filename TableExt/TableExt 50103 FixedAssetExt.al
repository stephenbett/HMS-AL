tableextension 50103 FixesAssetExt extends "Fixed Asset"
{
    fields
    {
        field(31; "Hospital Lab"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(32; "Hospital Ward"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }
}