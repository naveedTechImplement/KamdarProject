report 50141 SalesComissionReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Salesperson_postedSIVreport.rdlc';

    dataset
    {

        dataitem(Inv_CustLedger; "Cust. Ledger Entry")
        {

            // Include the "Salesperson Code" field on the filter tab of the request page.
            RequestFilterFields = "Salesperson Code", "Posting Date";
            PrintOnlyIfDetail = True;
            DataItemTableView = sorting("Posting Date") WHERE("Document Type" = FILTER(Invoice));
            // DataItemTableView = WHERE("Document Type" = FILTER(Invoice | "Credit Memo"), Open = CONST(true));


            column(Posting_Date; "Posting Date")
            {
                IncludeCaption = true;
            }
            column(Document_Type; "Document Type")
            {
                IncludeCaption = true;
            }
            column(Document_No_; "Document No.")
            {
                IncludeCaption = true;
            }
            column(Customer_No_; "Customer No.")
            {
                IncludeCaption = true;
            }
            column(Salesperson_Code; "Salesperson Code")
            {
                IncludeCaption = true;
            }
            column(External_Document_No_; "External Document No.")
            {
                IncludeCaption = true;
            }
            column(User_ID; "User ID")
            {
                IncludeCaption = true;
            }

            dataitem("Sales Invoice Header"; "Sales Invoice Header")
            {
                DataItemLink = "No." = field("Document No.");
                column(Inv_Customer_Name; "Bill-to Name")
                {
                    IncludeCaption = true;
                }
                column(Inv_Payment_Terms_Code; "Payment Terms Code")
                {
                    IncludeCaption = true;
                }
                column(Inv_Bill_to_City; "Bill-to City")
                {
                    IncludeCaption = true;
                }
                column(Inv_Bill_to_County; "Bill-to County")
                {
                    IncludeCaption = true;
                }
                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLink = "Document No." = field("No.");
                    column(Inv_No_; "No.")
                    {
                        IncludeCaption = true;
                    }
                    column(Inv_Quantity; Quantity)
                    {
                        IncludeCaption = true;
                    }
                    column(Inv_Unit_Price; "Unit Price")
                    {
                        IncludeCaption = true;
                    }
                    column(Inv_Order_No_; "Order No.")
                    {
                        IncludeCaption = true;
                    }
                    column(Inv_Amount; Amount)
                    {
                        IncludeCaption = true;
                    }
                    dataitem(Inv_Item; Item)
                    {
                        DataItemLink = "No." = field("No.");
                        column(Unit_Price; "Unit Price")
                        {
                            IncludeCaption = true;
                        }
                    }
                }
            }


        }

        dataitem(Cr_CustLedger; "Cust. Ledger Entry")
        {
            // Include the "Salesperson Code" field on the filter tab of the request page.
            RequestFilterFields = "Salesperson Code", "Posting Date";
            PrintOnlyIfDetail = True;
            DataItemTableView = sorting("Posting Date") WHERE("Document Type" = FILTER("Credit Memo"));
            column(Cr_Posting_Date; "Posting Date")
            {

            }
            column(Cr_Document_Type; "Document Type")
            {

            }
            column(Cr_Document_No_; "Document No.")
            {

            }
            column(Cr_Customer_No_; "Customer No.")
            {

            }
            column(Cr_Salesperson_Code; "Salesperson Code")
            {

            }
            column(Cr_External_Document_No_; "External Document No.")
            {

            }
            column(Cr_User_ID; "User ID")
            {

            }

            dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
            {
                DataItemLink = "No." = field("Document No.");
                column(Cr_Customer_Name; "Bill-to Name")
                {

                }
                column(Cr_Payment_Terms_Code; "Payment Terms Code")
                {

                }
                column(Cr_Bill_to_City; "Bill-to City")
                {

                }
                column(Cr_Bill_to_County; "Bill-to County")
                {

                }
                dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
                {
                    DataItemLink = "Document No." = field("No.");
                    column(Cr_No_; "No.")
                    {

                    }
                    column(Cr_Quantity; Quantity)
                    {

                    }
                    column(Cr_Unit_Price; "Unit Price")
                    {

                    }
                    column(Cr_Order_No_; "Order No.")
                    {

                    }
                    column(Cr_Amount; Amount)
                    {

                    }
                    dataitem(Cr_Item; Item)
                    {
                        DataItemLink = "No." = field("No.");
                        column(Cr_Actual_Unit_Price; "Unit Price")
                        {
                            IncludeCaption = true;
                        }
                    }
                }


            }
        }

    }


    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Check; Check)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var
        Check: Boolean;
}