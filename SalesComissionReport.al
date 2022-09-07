report 50141 SalesComissionReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Salesperson_postedSIVreport.rdlc';

    dataset
    {
        dataitem(CustLedger; "Cust. Ledger Entry")
        {

            // Include the "Salesperson Code" field on the filter tab of the request page.
            RequestFilterFields = "Salesperson Code", "Posting Date";
            PrintOnlyIfDetail = True;
            DataItemTableView = WHERE("Document Type" = FILTER(Invoice | "Credit Memo"), Open = CONST(true));


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
            dataitem(Customer; Customer)
            {
                DataItemLink = "No." = field("Customer No.");

                column(Name; Name)
                {

                }
                column(Payment_Terms_Code; "Payment Terms Code")
                {

                }
                column(City; City)
                {

                }

                column(County; County)
                {

                }
                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLink = "Sell-to Customer No." = field("No.");
                    column(No_; "No.")
                    {

                    }
                    column(Quantity; Quantity)
                    {

                    }
                    column(Unit_Price; "Unit Price")
                    {

                    }
                    column(Order_No_; "Order No.")
                    {

                    }
                    column(Amount; Amount)
                    {

                    }


                }

            }



            trigger OnPreDataItem()
            begin
                if Check = true then
                    Message('its working');
            end;


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