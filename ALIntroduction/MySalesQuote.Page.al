page 80102 "My Sales Quote"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Sales Header";
    SourceTableView = where("Document Type" = const(Quote));

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies';

                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies';
                }
            }
            part(Lines; "My Sales Quote Lines")
            {
                SubPageLink = "Document Type" = field("Document Type"),
                              "Document No." = field("No.");
            }
        }
        area(FactBoxes)
        {
            part(SellToHistory; "Sales Hist. Sell-to FactBox")
            {
                ApplicationArea = All; // needed in page extensions
                SubPageLink = "No." = field("Sell-to Customer No."),
                                "Date Filter" = field("Date Filter");
            }
        }
    }
    actions
    {
        area(Reporting)
        {
            action(CustomerItemStatistics)
            {
                Caption = 'Customer Item Sales';
                ToolTip = 'Calls the Customer Item Sales Report';
                Image = Report;
                RunObject = report "Customer/Item Sales";

            }
        }
        area(Navigation)
        {
            group(History)
            {
                Caption = 'History';

                action(CustomerLedgerEntries)
                {
                    Caption = 'Customer Ledger Entries';
                    ToolTip = 'Opens the Customer Ledger Entries List';
                    Image = CustomerLedger;
                    RunObject = page "Customer Ledger Entries";
                    RunPageLink = "Customer No." = field("Sell-to Customer No.");
                }
            }
        }
        area(Processing)
        {
            action(HelloWorld)
            {
                Caption = 'Hello World';
                ToolTip = 'Hello World';

                trigger OnAction()
                begin
                    Message('Hello World!');
                end;
            }
            action(ExportCustomers)
            {
                Caption = 'Export Customers';
                ToolTip = 'Export Customers';

                RunObject = xmlport ExportCustomers;
            }
        }
        area(Promoted)
        {
            actionref(HelloWorld_Promoted; HelloWorld)
            {

            }
        }
    }
}