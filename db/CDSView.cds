// namespace minakshi.db;

// using { minakshi.db.master, minakshi.db.transaction  } from './datamodel';

// context CDSView {
//     define view ![POWorklist] as 
//     select from transaction.purchaseorder {
//         key PO_ID as ![PurchseOrderID],
//         PARTNER_GUID.BP_ID as ![PartnerId],
//         PARTNER_GUID.COMPANY_NAME as ![CompanyName],
//         GROSS_AMOUNT as ![PoGrossAmount],
//         CURRENCY.code as ![PoCurrencyCode],
//         LIFECYCLE_STATUS as ![PoStatus],
//         key Items.PO_ITEM_POS as ![ItemPosition],
//         Items.PRODUCT_GUID.PRODUCT_ID as ![ProductId],
//         Items.PRODUCT_GUID.DESCRIPTION as ![ProductName],
//         PARTNER_GUID.ADDRESS_GUID.COUNTRY as ![Country],
//         PARTNER_GUID.ADDRESS_GUID.CITY as ![City]

//     };

//     define view ProductValueHelp as select from
//     master.product {
    
//         @EndUserText.label : [
//             {
//                 language : 'EN',
//                 text : 'Product ID'
//             },
//             {
//                 language : 'DE',
//                 text : 'Prodekt ID'
//             }
//         ]
//         PRODUCT_ID as ![ProductId],

//         @EndUserText.label : [
//             {
//                 language : 'EN',
//                 text : 'Product Description'
//             },
//             {
//                 language : 'DE',
//                 text : 'Prodekt Desc'
//             }
//         ]
//         DESCRIPTION as ![DESCRIPTION]
//     };


//     define view ![ItemView] as select from transaction.poitems{
//         key PARENT_KEY.PARTNER_GUID.NODE_KEY as ![Partner],
//         PRODUCT_GUID.NODE_KEY as ![ProductId],
//         CURRENCY.code as ![CurrencyCode],
//         GROSS_AMOUNT as ![GrossAmount],
//         NET_AMOUNT as ![NetAmount],
//         TAX_AMOUNT as ![TaxAmount],
//         PARENT_KEY.OVERALL_STATUS as ![POStatus]
//     };

//     define view ![ProductViewSum] as select from master.product as prod {
//         key PRODUCT_ID as ![ProductId],
//         texts.DESCRIPTION as ![Description],
//         (select from transaction.poitems as a{
//            SUM(a.GROSS_AMOUNT) as Sum
//         } where a.PRODUCT_GUID.NODE_KEY = prod.NODE_KEY) as PO_Sum:String
//     };

//     define view ProductView as select from master.product mixin {
//         PO_ORDERS :Association[*] to ItemView on 

//         PO_ORDERS.ProductId = $projection.ProductId
//     } into {
//         key NODE_KEY as ![ProductId],
//         DESCRIPTION,
//         CATEGORY as ![Catagory],
//         PRICE as ![Price],
//         TYPE_CODE as ![TypeCode],
//         SUPPLIER_GUID.BP_ID as ![BPId],
//         SUPPLIER_GUID.COMPANY_NAME as ![CompanyName],
//         SUPPLIER_GUID.ADDRESS_GUID.CITY as ![City],
//         SUPPLIER_GUID.ADDRESS_GUID.COUNTRY as ![Country],
//         // Exposed Association, which means when someone read the view
//         // the data for orders wont read by default
//         // untill unless someone consume the association
//         PO_ORDERS
//     };

//     define view CProductValuesView as 
//     select from ProductView {
//         key ProductId,
//         Country,
//         PO_ORDERS.CurrencyCode,
//         SUM(PO_ORDERS.GrossAmount) as ![POGrossAmount]:String
//     } group by ProductId, Country, PO_ORDERS.CurrencyCode



// }


