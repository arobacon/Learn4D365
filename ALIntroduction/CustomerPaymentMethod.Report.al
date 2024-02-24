report 80101 CustomerPaymentMethod
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    Caption = 'Customer Payment Method';
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnAfterGetRecord()
            begin
                Customer.Validate("Payment Method Code", PaymentMethodCode);
                Customer.Modify(true);
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(MyPaymentMethodCode; PaymentMethodCode)
                    {
                        ApplicationArea = All;
                        Tooltip = 'Specify the Customer Payment Method';
                        TableRelation = "Payment Method";
                        Caption = 'CustomerPaymentMethod';

                    }
                }
            }
        }
    }


    var
        PaymentMethodCode: Code[10];
}