report 50140 Salesperson_postedSIVreport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Salesperson_postedSIVreport.rdlc';

    dataset
    {
        dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
        {
            RequestFilterFields = "Salesperson Code", "Posting Date", "Document Type";
            PrintOnlyIfDetail = true;
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
            // column(Inv_Posting_Date; "Posting Date")
            // {

            // }
            // column(Inv_DocNo_; "No.")
            // {

            // }
            // column(Inv_Order_No_; "Order No.")
            // {

            // }
            // column(Inv_Sell_to_Customer_No_; "Sell-to Customer No.")
            // {

            // }
            // column(Inv_Customer_Name; "Bill-to Name")
            // {

            // }
            // dataitem("Sales Invoice Line"; "Sales Invoice Line")
            // {
            //     DataItemLink = "Document No." = field("No.");

            //     column(Inv_ItemNo; "No.")
            //     {

            //     }
            //     column(Inv_Quantity; Quantity)
            //     {

            //     }
            //     column(Inv_Unit_Price; "Unit Price")
            //     {

            //     }
            //     column(Inv_Amount; Amount)
            //     {

            //     }
            // }

        }
        // dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        // {
        //     RequestFilterFields = "Salesperson Code", "Posting Date";

        //     column(Cre_Posting_Date; "Posting Date")
        //     {

        //     }
        //     column(Cre_DocNo_; "No.")
        //     {

        //     }
        //     column(Cre_Return_Order_No_; "Return Order No.")
        //     {

        //     }
        //     column(Cre_Customer_Name; "Bill-to Name")
        //     {

        //     }
        //     column(Cre_Customer_No_; "Bill-to Customer No.")
        //     {

        //     }
        //     dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
        //     {
        //         DataItemLink = "Document No." = field("No.");
        //         column(Cre_ItemNo_; "No.")
        //         {

        //         }
        //         column(Cre_Quantity; Quantity)
        //         {

        //         }
        //         column(Cre_Unit_Price; "Unit Price")
        //         {

        //         }
        //         column(Cre_Amount; Amount)
        //         {

        //         }
        //     }

        // }
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