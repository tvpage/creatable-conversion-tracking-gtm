___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Creatable Conversion Tracking",
  "categories": ["AFFILIATE_MARKETING", "CONVERSIONS", "ATTRIBUTION"],
  "brand": {
    "id": "brand_creatable",
    "displayName": "Creatable",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAPpSURBVHgBxVe9TxRREJ+3xwHK12kIEEFzJAJZEgQKtVIgERspMND4kRDiHwAWFkqIZ9BY2EBjYkHURGNF1IgNFGKsjAWoCQQ0sCoQJSoHB/Kx3D5n9o5z7+1bbg9I/CVX3OzbN/NmZ36/eQxcYsof8OngbfQoUGNwqGIAfjT7oo+DHEBjDEbAYEMeWH9erAWCbvZliR3f9uvKRrvClRaLQzc7P/AY+g0MRNt6maPjgM9QUq9zztthB+CMdZdMXrsMyQRApw4z4xVE0rwb0Dxcr5NlwxbAhP9WlcLgqZPz9OOHIKO+DLxF2aBkp8fsa6NzsDw4Dqtvv4JTEFg7Z0u1jhHHALY6+b62E+BrPRrnVIaN6QX43fMGQn0fpEGImWD/nAd8YeYdFp2nFOZAwb1mSCvPh2RAgcycewQbMwu2IEJcr66OdomyaaWCE52nqflw8OWlpJ2bgRflRN5V88RH/syILxNmBqKpn4rboDCyQaKUJ4KxuArfzvTaMoGfopg+RQr90Vk4oAj1WPjkoqNz2nSx7yOsj343/6eWF0BmfQme2k4TtAd9wumG3ji7Dh5q73YW/fbz1odZTUcg706D1PE8Fljw/juQIaupAnI766WBU2HSuxYEsRaKFaJXcfF+rHiZ89nzjx2dE0KYFVpDa0VQB4mmLFAaMfO81mqlPqcCEvGzaxB7/QckAq0RTmqCsrIH97aCKZ6aFIyg0mrMOF1me3ljOmiezi0oS7JgdaEQSdSoCP1Wo6RtYGngEySLFWdGjIEUlXggocKtjyVO/TbhU+A/gwKIGxyMxTXbolQ1eSZ0iSDVgIa/qk2LbuduyG6ugF83ByEZpAsVTyB9sDIiTVEpBufvFcZiAfwZGLf1LLVQDtoWtuAAK5yIbFYQJxrh8BOwIesiql4ZkRA5yTpEBAlYbucpm51a2dYZOD8qXtCfgVAHMrajLBxAfaDTOSGn9RiuueBIxSJCOLyaCvTZ39WNtNRmfVjU7yzD9C2XBiawPaNipBaYdeIkXnT6LyfvxhtxaD082dFqBjCGcuwV5Zj0vH+X5BiVkIK2QkchUlGOTR5QtasacKMHhFM6CUsyzmkP0bmBvtToWBYjIg+EAxBpyRiIzyPRu7pjgOxdiSZopVpnbNSPBUA3GZ0rdWIQFD19v7krL1wFsjkzTEvSTntj6uushqTHcpLUvaiY1pY0QmugozPikJWdjOWbiBblrl5M6OSq5GIiFSMqShwaq8XC3A6o4GgMVx3uiAkvp5QNKlCk6xZwjyA6fhiGcLe63cupiGEcXjPM+ZHXYtoqkcj9YLmeA+caAzYSBni9jOxa7fJ6/hcf29hS1PWjBAAAAABJRU5ErkJggg=="
  },
  "description": "Fires Creatable conversion tracking on a purchase, including coupon codes and the new-customer flag. Auto-reads the GA4 ecommerce dataLayer; manual mapping available for non-standard setups.",
  "containerContexts": ["WEB"]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "accountId",
    "displayName": "Creatable Account ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Your Creatable account ID (the <code>li</code> value). Provided by your Creatable account manager. Stage and Production use different account IDs."
  },
  {
    "type": "RADIO",
    "name": "environment",
    "displayName": "Environment",
    "radioItems": [
      {
        "value": "production",
        "displayValue": "Production"
      },
      {
        "value": "stage",
        "displayValue": "Stage (testing only)"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "production",
    "help": "Use Stage, with your stage account ID, to test before going live. Switch to Production and your production account ID when you go live."
  },
  {
    "type": "RADIO",
    "name": "dataSource",
    "displayName": "Order data source",
    "radioItems": [
      {
        "value": "dataLayer",
        "displayValue": "Auto-detect from GA4 ecommerce dataLayer (recommended)"
      },
      {
        "value": "manual",
        "displayValue": "Map fields manually"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "dataLayer"
  },
  {
    "type": "TEXT",
    "name": "transactionId",
    "displayName": "Transaction ID",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "dataSource",
        "paramValue": "manual",
        "type": "EQUALS"
      }
    ],
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "enablingConditions": [
          {
            "paramName": "dataSource",
            "paramValue": "manual",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "help": "Reference your transaction ID variable, e.g. <code>{{DLV - ecommerce.transaction_id}}</code>."
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "orders",
    "displayName": "Order line items",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "SKU",
        "name": "sku",
        "type": "TEXT"
      },
      {
        "defaultValue": "",
        "displayName": "Price",
        "name": "price",
        "type": "TEXT"
      },
      {
        "defaultValue": "1",
        "displayName": "Quantity",
        "name": "quantity",
        "type": "TEXT"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "dataSource",
        "paramValue": "manual",
        "type": "EQUALS"
      }
    ],
    "help": "Each row should reference a GTM variable resolving to a single value, or a hardcoded string for testing. Price is what the customer paid for one unit, after discounts, without tax or shipping."
  },
  {
    "type": "TEXT",
    "name": "couponCodes",
    "displayName": "Coupon codes (optional)",
    "simpleValueType": true,
    "help": "A variable that resolves to an array of coupon codes, or a comma-separated string. Leave blank to read <code>ecommerce.coupon</code> and each item's <code>coupon</code> from the GA4 dataLayer (auto-detect mode only)."
  },
  {
    "type": "TEXT",
    "name": "newCustomer",
    "displayName": "New customer (optional)",
    "simpleValueType": true,
    "help": "A variable that resolves to <code>true</code> or <code>false</code>. You decide what counts as a new customer. Leave blank to read <code>new_customer</code> from the dataLayer (auto-detect mode only). If the value is unknown, nothing is sent."
  },
  {
    "type": "CHECKBOX",
    "name": "enableLogging",
    "checkboxText": "Enable console logging (debug only)",
    "simpleValueType": true,
    "defaultValue": false
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const createQueue = require('createQueue');
const copyFromDataLayer = require('copyFromDataLayer');
const logToConsole = require('logToConsole');
const makeString = require('makeString');
const getType = require('getType');

const log = (label, payload) => {
  if (data.enableLogging) {
    logToConsole('[Creatable]', label, payload);
  }
};

const isSet = value => value !== undefined && value !== null && value !== '';

// Accepts an array of codes or a comma-separated string.
const toCodes = value => {
  const type = getType(value);
  if (type === 'array') return value;
  if (type === 'string') return value.split(',');
  return [];
};

const toNewCustomer = value => {
  const text = makeString(value).trim().toLowerCase();
  if (text === 'true' || text === '1') return true;
  if (text === 'false' || text === '0') return false;
  return undefined;
};

const tvpaPush = createQueue('_tvpa');
const isStage = data.environment === 'stage';

// 1) Config
const config = { li: makeString(data.accountId) };
if (isStage) {
  config.logUrl = 'https://stage.tvpage.com/api/__tvpa.gif';
}
tvpaPush(['config', config]);
log('config', config);

// 2) Build the order payload
let tid;
let orders = [];
let rawCoupons = [];
let rawNewCustomer;

if (data.dataSource === 'dataLayer') {
  tid = copyFromDataLayer('ecommerce.transaction_id');
  const items = copyFromDataLayer('ecommerce.items') || [];
  orders = items.map(item => ({
    sku: makeString(item.item_id || item.id || item.sku || ''),
    price: makeString(item.price || '0'),
    quantity: makeString(item.quantity || '1')
  }));
  rawCoupons = toCodes(copyFromDataLayer('ecommerce.coupon'));
  items.forEach(item => {
    rawCoupons = rawCoupons.concat(toCodes(item.coupon));
  });
  rawNewCustomer = copyFromDataLayer('new_customer');
} else {
  tid = data.transactionId;
  orders = (data.orders || []).map(row => ({
    sku: makeString(row.sku),
    price: makeString(row.price),
    quantity: makeString(row.quantity || '1')
  }));
}

if (isSet(data.couponCodes)) {
  rawCoupons = toCodes(data.couponCodes);
}
if (isSet(data.newCustomer)) {
  rawNewCustomer = data.newCustomer;
}

const coupons = [];
rawCoupons.forEach(code => {
  const type = getType(code);
  if (type !== 'string' && type !== 'number') return;
  const trimmed = makeString(code).trim();
  if (trimmed !== '' && coupons.indexOf(trimmed) < 0) {
    coupons.push(trimmed);
  }
});
const newCustomer = toNewCustomer(rawNewCustomer);

if (!tid || orders.length === 0) {
  log('aborting — missing tid or empty orders', { tid: tid, orders: orders });
  data.gtmOnFailure();
  return;
}

// 3) Track
const payload = {
  tid: makeString(tid),
  orders: orders
};
if (coupons.length > 0) {
  payload.coupons = coupons;
}
if (newCustomer !== undefined) {
  payload.new_customer = newCustomer;
}
tvpaPush(['track', 'products', payload]);
log('track', payload);

// 4) Inject the Creatable library
const url = isStage ? 'https://a.tvpage.com/stage/tvpa.min.js' : 'https://a.tvpage.com/tvpa.min.js';
injectScript(url, data.gtmOnSuccess, data.gtmOnFailure, url);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://a.tvpage.com/tvpa.min.js"
              },
              {
                "type": 1,
                "string": "https://a.tvpage.com/stage/tvpa.min.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {"type": 1, "string": "key"},
                  {"type": 1, "string": "read"},
                  {"type": 1, "string": "write"},
                  {"type": 1, "string": "execute"}
                ],
                "mapValue": [
                  {"type": 1, "string": "_tvpa"},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": true}
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce.transaction_id"
              },
              {
                "type": 1,
                "string": "ecommerce.items"
              },
              {
                "type": 1,
                "string": "ecommerce.coupon"
              },
              {
                "type": 1,
                "string": "new_customer"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: GA4 mode sends coupons and new customer
  code: |-
    dataLayer = {
      'ecommerce.transaction_id': 'ORDER-100045',
      'ecommerce.items': [{item_id: 'bb8100', price: 14.99, quantity: 4, coupon: 'SAVE10'}],
      'ecommerce.coupon': 'SAVE10, VIP',
      'new_customer': true
    };

    runCode({accountId: '1759449', environment: 'production', dataSource: 'dataLayer'});

    assertThat(pushes[1]).isEqualTo(['track', 'products', {
      tid: 'ORDER-100045',
      orders: [{sku: 'bb8100', price: '14.99', quantity: '4'}],
      coupons: ['SAVE10', 'VIP'],
      new_customer: true
    }]);
    assertApi('gtmOnSuccess').wasCalled();
- name: GA4 mode without coupons or new customer sends only tid and orders
  code: |-
    dataLayer = {
      'ecommerce.transaction_id': 'ORDER-100045',
      'ecommerce.items': [{item_id: 'bb8100', price: 14.99, quantity: 4}]
    };

    runCode({accountId: '1759449', environment: 'production', dataSource: 'dataLayer'});

    assertThat(pushes[1]).isEqualTo(['track', 'products', {
      tid: 'ORDER-100045',
      orders: [{sku: 'bb8100', price: '14.99', quantity: '4'}]
    }]);
    assertApi('gtmOnSuccess').wasCalled();
- name: Manual mode reads the coupon codes and new customer fields
  code: |-
    runCode({
      accountId: '1759449',
      environment: 'production',
      dataSource: 'manual',
      transactionId: 'ORDER-100045',
      orders: [{sku: 'bb8100', price: '14.99', quantity: '4'}],
      couponCodes: 'A,B',
      newCustomer: 'false'
    });

    assertThat(pushes[1]).isEqualTo(['track', 'products', {
      tid: 'ORDER-100045',
      orders: [{sku: 'bb8100', price: '14.99', quantity: '4'}],
      coupons: ['A', 'B'],
      new_customer: false
    }]);
    assertApi('gtmOnSuccess').wasCalled();
- name: Unknown new customer value is left out
  code: |-
    dataLayer = {
      'ecommerce.transaction_id': 'ORDER-100045',
      'ecommerce.items': [{item_id: 'bb8100', price: 14.99, quantity: 4}],
      'new_customer': 'maybe'
    };

    runCode({accountId: '1759449', environment: 'production', dataSource: 'dataLayer'});

    assertThat(pushes[1]).isEqualTo(['track', 'products', {
      tid: 'ORDER-100045',
      orders: [{sku: 'bb8100', price: '14.99', quantity: '4'}]
    }]);
    assertApi('gtmOnSuccess').wasCalled();
- name: Missing transaction ID fails without loading the library
  code: |-
    dataLayer = {
      'ecommerce.items': [{item_id: 'bb8100', price: 14.99, quantity: 4}]
    };

    runCode({accountId: '1759449', environment: 'production', dataSource: 'dataLayer'});

    assertApi('gtmOnFailure').wasCalled();
    assertApi('injectScript').wasNotCalled();
- name: Stage loads the stage library and sends to the stage pixel
  code: |-
    dataLayer = {
      'ecommerce.transaction_id': 'ORDER-100045',
      'ecommerce.items': [{item_id: 'bb8100', price: 14.99, quantity: 4}]
    };

    runCode({accountId: '1759449', environment: 'stage', dataSource: 'dataLayer'});

    assertThat(pushes[0]).isEqualTo(['config', {li: '1759449', logUrl: 'https://stage.tvpage.com/api/__tvpa.gif'}]);
    assertThat(injected).isEqualTo(['https://a.tvpage.com/stage/tvpa.min.js']);
    assertApi('gtmOnSuccess').wasCalled();
- name: Production loads the production library with no logUrl
  code: |-
    dataLayer = {
      'ecommerce.transaction_id': 'ORDER-100045',
      'ecommerce.items': [{item_id: 'bb8100', price: 14.99, quantity: 4}]
    };

    runCode({accountId: '1759449', environment: 'production', dataSource: 'dataLayer'});

    assertThat(pushes[0]).isEqualTo(['config', {li: '1759449'}]);
    assertThat(injected).isEqualTo(['https://a.tvpage.com/tvpa.min.js']);
    assertApi('gtmOnSuccess').wasCalled();
setup: |-
  let dataLayer = {};
  const pushes = [];
  const injected = [];

  mock('copyFromDataLayer', key => dataLayer[key]);
  mock('createQueue', name => args => {
    pushes.push(args);
  });
  mock('injectScript', (url, onSuccess, onFailure) => {
    injected.push(url);
    onSuccess();
  });
