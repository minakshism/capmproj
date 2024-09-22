using { minakshi.db.master, minakshi.db.transaction } from '../db/datamodel';
using interface from './interfaces/interface';
service CatalogService @(path:'CatalogService')
@(requires : 'authenticated-user')
{
    entity AddressSet as projection on master.address;
    entity ProductSet as projection on master.product;
    entity BPSet as projection on master.businesspartner;
    @Capabilities : { Insertable, Updatable, Deletable, Readable}
    entity EmployeeSet  as projection on master.employees;

    entity POs @(title : '{i18n>POHeader}', odata.draft.enabled : true) as projection on transaction.purchaseorder{
        *,
        round(GROSS_AMOUNT, 2) as GROSS_AMOUNT : Decimal(15,2),
        case LIFECYCLE_STATUS
        when 'N' then 'New'
        when 'D' then 'Delivered'
        when 'B' then 'Block'
        end as LIFECYCLE_STATUS: String(20),
        case LIFECYCLE_STATUS
        when 'N' then 2
        when 'D' then 3
        when 'B' then 1
        end as Criticality : Integer,
        Items : redirected to POItems
    }actions{
        function largestOrder() returns array of POs;
        action boost();
    }

    annotate POs with{
        GROSS_AMOUNT @title : '{i18n>GROSS_AMOUNT}';
    }

    entity POItems @(title : '{i18n>POItems}') as projection on transaction.poitems{
        *,
        PARENT_KEY : redirected to POs,
        PRODUCT_GUID : redirected to ProductSet
    }

    action triggerNotifications(notifications : interface.notificationType);
}