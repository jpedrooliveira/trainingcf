using {trainingcf.products as products} from '../db/schema/products';
using {trainingcf.salesorder as salesorder} from '../db/schema/salesorder';
using {trainingcf.clients as clients} from '../db/schema/clients';
using {trainingcf.user as user} from '../db/schema/user';
using {trainingcf.views.TotalSalesByClientView as totalSalesByClientView} from '../db/views/TotalSalesByClientView';

service MyServices {
    entity Products as projection on products.TblProducts;
    entity SalesOrder as projection on salesorder.TblSalesOrder;
    entity User as projection on user.TblUser;
    entity Client as projection on clients.TblClient;

    entity TotalSalesByClientView as projection on totalSalesByClientView;

    function helloFunction(name: String) returns String;
    action helloAction(name: String) returns String;
    action callProcedure(value: Integer) returns String;
}