using { minakshi.db.master, minakshi.db.transaction } from '../db/datamodel';

service mydemoservice {
    @readonly
    entity ReadEmployeeSrv as projection on master.employees;
    @updateonly
    entity UpdateEmployeeSrv as projection on master.employees;
    @insertonly
    entity InsertEmployeeSrv as projection on master.employees;
    @deleteonly
    entity DeleteEmployeeSrv as projection on master.employees;
}

