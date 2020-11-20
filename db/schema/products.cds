using {Base, temporal, withTemporal} from './common';
namespace trainingcf.products;

entity TblProducts : Base, withTemporal {
    name: String(100);
    manufacturer: String(50);
    salesPrice: Decimal;
    basePrice: Decimal;
    quantity: Integer;
}