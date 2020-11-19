using {Base, STATUS_TYPE} from './common';
using {trainingcf.products.TblProducts} from './products';
using {trainingcf.user.TblUser} from './user';
using {trainingcf.clients.TblClient} from './clients';
namespace trainingcf.salesorder;

entity TblSalesOrder : Base {
    status: STATUS_TYPE;
    user: Association to TblUser;
    client: Association to TblClient;
}

entity TblSalesOrderItem : Base {
    status: STATUS_TYPE;
    salesorder: Association to TblSalesOrder;
    product: Association to TblProducts; 
}