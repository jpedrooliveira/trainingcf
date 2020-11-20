using {trainingcf.salesorder as salesorder} from '../../schema/salesorder';
using {trainingcf.user as user} from '../../schema/user';

namespace trainingcf.views;

define view ProductsByClient as
    select from salesorder.TblSalesOrderItem {
        product.ID as ![productId],
        product.name as ![productName],
        salesorder.client.ID as ![clientId],
        salesorder.client.name as ![clientName]
    };