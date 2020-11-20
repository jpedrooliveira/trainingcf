using {trainingcf.products as product} from '../schema/products';

namespace trainingcf.views;

define view AvailableProductsView as
    select from product.TblProducts as p where p.validFrom <= now() and p.validTo >= now();