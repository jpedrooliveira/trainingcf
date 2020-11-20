using {Base, STATUS_TYPE} from './common';
namespace trainingcf.clients;

entity TblClient : Base {
    name: String(100);
    age: Integer;
    familyName: String(100);
    category: String(1);
}