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
            DataItemTableView = WHERE("Document Type" = FILTER(Invoice), Open = CONST(true));
            // DataItemTableView = WHERE("Document Type" = FILTER(Invoice | "Credit Memo"), Open = CONST(true));
            column(Posting_Date; "Posting Date")
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(Customer_No_; "Customer No.")
            {

            }
            column(Salesperson_Code; "Salesperson Code")
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }

            dataitem("Sales Invoice Header"; "Sales Invoice Header")
            {
                DataItemLink = "No." = field("Document No.");
                column(Inv_Customer_Name; "Bill-to Name")
                {

                }
                column(Inv_Payment_Terms_Code; "Payment Terms Code")
                {

                }
                column(Inv_Bill_to_City; "Bill-to City")
                {

                }
                column(Inv_Bill_to_County; "Bill-to County")
                {

                }
                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLink = "Document No." = field("No.");
                    column(Inv_No_; "No.")
                    {

                    }
                    column(Inv_Quantity; Quantity)
                    {

                    }
                    column(Inv_Unit_Price; "Unit Price")
                    {

                    }
                    column(Inv_Order_No_; "Order No.")
                    {

                    }
                    column(Inv_Amount; Amount)
                    {

                    }
                }

            }


        }

        dataitem(Cr_CustLedger; "Cust. Ledger Entry")
        {
            // Include the "Salesperson Code" field on the filter tab of the request page.
            RequestFilterFields = "Salesperson Code", "Posting Date";
            PrintOnlyIfDetail = True;
            DataItemTableView = WHERE("Document Type" = FILTER("Credit Memo"), Open = CONST(true));
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