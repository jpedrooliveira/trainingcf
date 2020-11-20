using {trainingcf.products as products} from '../../schema/products';

namespace trainingcf.views;

define view AvailableProductsView as
    select from products.TblProducts as p where p.validFrom <= now() and p.validTo >= now();