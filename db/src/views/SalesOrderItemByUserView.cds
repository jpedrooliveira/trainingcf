using {trainingcf.salesorder as salesorder} from '../../schema/salesorder';
using {trainingcf.user as user} from '../../schema/user';

namespace trainingcf.views;

define view SalesOrderItemByUserView as
    select from salesorder.TblSalesOrderItem {
        ID,
        salesorder.ID as ![salesOrderId],
        salesorder.status as ![salesOrderStatus],
        salesorder.user.ID as ![userID],
        salesorder.user.name as ![userName]
    };