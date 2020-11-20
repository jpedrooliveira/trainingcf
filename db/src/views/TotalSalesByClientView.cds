using {trainingcf.salesorder as salesorder} from '../../schema/salesorder';
using {trainingcf.clients} from '../../schema/clients';

namespace trainingcf.views;

define view TotalSalesByClientView as
    select from salesorder.TblSalesOrderItem {
        salesorder.client.ID as ![clientId],
        salesorder.client.name as ![clientName],
        sum(product.quantity * product.salesPrice) as ![totalSalesValor]
    } group by salesorder.client.ID, salesorder.client.name;