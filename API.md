# API Documentation

* [A2billingRestApi.CardController](#a2billingrestapicardcontroller)
  * [create](#a2billingrestapicardcontrollercreate)
  * [delete](#a2billingrestapicardcontrollerdelete)
  * [index](#a2billingrestapicardcontrollerindex)
  * [show](#a2billingrestapicardcontrollershow)
  * [update](#a2billingrestapicardcontrollerupdate)
* [A2billingRestApi.CardGroupController](#a2billingrestapicardgroupcontroller)
  * [create](#a2billingrestapicardgroupcontrollercreate)
  * [delete](#a2billingrestapicardgroupcontrollerdelete)
  * [index](#a2billingrestapicardgroupcontrollerindex)
  * [show](#a2billingrestapicardgroupcontrollershow)
  * [update](#a2billingrestapicardgroupcontrollerupdate)
* [A2billingRestApi.CardSeriaController](#a2billingrestapicardseriacontroller)
  * [create](#a2billingrestapicardseriacontrollercreate)
  * [delete](#a2billingrestapicardseriacontrollerdelete)
  * [index](#a2billingrestapicardseriacontrollerindex)
  * [show](#a2billingrestapicardseriacontrollershow)
  * [update](#a2billingrestapicardseriacontrollerupdate)
* [A2billingRestApi.DidgroupController](#a2billingrestapididgroupcontroller)
  * [create](#a2billingrestapididgroupcontrollercreate)
  * [delete](#a2billingrestapididgroupcontrollerdelete)
  * [index](#a2billingrestapididgroupcontrollerindex)
  * [show](#a2billingrestapididgroupcontrollershow)
  * [update](#a2billingrestapididgroupcontrollerupdate)
* [A2billingRestApi.TimezoneController](#a2billingrestapitimezonecontroller)
  * [create](#a2billingrestapitimezonecontrollercreate)
  * [delete](#a2billingrestapitimezonecontrollerdelete)
  * [index](#a2billingrestapitimezonecontrollerindex)
  * [show](#a2billingrestapitimezonecontrollershow)
  * [update](#a2billingrestapitimezonecontrollerupdate)
* [A2billingRestApi.TokenController](#a2billingrestapitokencontroller)
  * [create](#a2billingrestapitokencontrollercreate)

## A2billingRestApi.CardController
### A2billingRestApi.CardController.create
#### does not create resource and renders errors when data is invalid
##### Request
* __Method:__ POST
* __Path:__ /api/cards
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: a4qhufsm1bj49i4ov6ski9bhl2cj74pe
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/username"
      },
      "detail": "Username can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/useralias"
      },
      "detail": "Useralias can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/uipass"
      },
      "detail": "Uipass can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/lastname"
      },
      "detail": "Lastname can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/firstname"
      },
      "detail": "Firstname can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/address"
      },
      "detail": "Address can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/city"
      },
      "detail": "City can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/state"
      },
      "detail": "State can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/country"
      },
      "detail": "Country can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/zipcode"
      },
      "detail": "Zipcode can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/phone"
      },
      "detail": "Phone can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/email"
      },
      "detail": "Email can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/fax"
      },
      "detail": "Fax can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/redial"
      },
      "detail": "Redial can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/loginkey"
      },
      "detail": "Loginkey can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/tag"
      },
      "detail": "Tag can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/email-notification"
      },
      "detail": "Email notification can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/company-name"
      },
      "detail": "Company name can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/company-website"
      },
      "detail": "Company website can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/traffic-target"
      },
      "detail": "Traffic target can't be blank"
    }
  ]
}
```

#### creates and renders resource when data is valid
##### Request
* __Method:__ POST
* __Path:__ /api/cards
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: catkn05r5t2628rc95trgcmtc74mo0jr
location: /api/cards/3
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card",
    "id": "3",
    "attributes": {
      "initialbalance": "120.5",
      "voicemail-permitted": 42,
      "nbservice": null,
      "tariff": 42,
      "enableexpire": 42,
      "block": null,
      "company-name": "some content",
      "lock-date": null,
      "voipcall": null,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "some content",
      "last-notification": null,
      "company-website": "some content",
      "credit": "120.5",
      "language": "en",
      "lastname": "some content",
      "email": "some content",
      "credit-notification": 42,
      "redial": "some content",
      "lastuse": null,
      "voicemail-activated": 42,
      "invoiceday": 42,
      "firstusedate": null,
      "city": "some content",
      "useralias": "some content",
      "email-notification": "some content",
      "uipass": "some content",
      "simultaccess": 42,
      "expiredays": null,
      "state": "some content",
      "mac-addr": "some content",
      "tag": "some content",
      "status": 42,
      "iax-buddy": 42,
      "vat": 120.5,
      "serial": 42,
      "loginkey": "some content",
      "servicelastrun": null,
      "restriction": 42,
      "zipcode": "some content",
      "address": "some content",
      "num-trials-done": 42,
      "firstname": "some content",
      "lock-pin": null,
      "notify-email": null,
      "currency": "USD",
      "discountdecimal": null,
      "inuse": 42,
      "country": "RUS",
      "fax": "some content",
      "runservice": 42,
      "nbused": null,
      "typepaid": 42,
      "expirationdate": null,
      "vat-rn": null,
      "phone": "1232131",
      "username": "some content",
      "creditlimit": 42,
      "autorefill": null,
      "activated": "f",
      "sip-buddy": 42
    }
  }
}
```

### A2billingRestApi.CardController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/cards/4
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: d15c2k9hglqfd96l507610k3p765bqsk
```
* __Response body:__
```json

```

### A2billingRestApi.CardController.index
#### lists all entries on index
##### Request
* __Method:__ GET
* __Path:__ /api/cards
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 6jpundfs4tq04ge0sj7dldjte09lbjt8
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": []
}
```

### A2billingRestApi.CardController.show
#### shows chosen resource
##### Request
* __Method:__ GET
* __Path:__ /api/cards/5
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: s146pfv4rhrh66cqs39p0b3d3b5g15cm
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card",
    "id": "5",
    "attributes": {
      "initialbalance": "0.00000",
      "voicemail-permitted": 0,
      "nbservice": 0,
      "tariff": 0,
      "enableexpire": 0,
      "block": null,
      "company-name": "Olson LLC",
      "lock-date": null,
      "voipcall": 0,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "",
      "last-notification": null,
      "company-website": "http://hane.net",
      "credit": "0.00000",
      "language": "en",
      "lastname": "Rohan",
      "email": "bethel_reichel@robel.name",
      "credit-notification": -1,
      "redial": "",
      "lastuse": "0000-00-00T00:00:00.000000",
      "voicemail-activated": 0,
      "invoiceday": 1,
      "firstusedate": "0000-00-00T00:00:00.000000",
      "city": "West Reymundoton",
      "useralias": "Boom Boom",
      "email-notification": "",
      "uipass": "password",
      "simultaccess": 0,
      "expiredays": 0,
      "state": "Virginia",
      "mac-addr": "00-00-00-00-00-00",
      "tag": "",
      "status": 1,
      "iax-buddy": 0,
      "vat": 0.0,
      "serial": null,
      "loginkey": "",
      "servicelastrun": "0000-00-00T00:00:00.000000",
      "restriction": 0,
      "zipcode": "21463",
      "address": "47 Anderson Unions Apt. 835",
      "num-trials-done": 0,
      "firstname": "Vicenta",
      "lock-pin": null,
      "notify-email": 0,
      "currency": "USD",
      "discountdecimal": null,
      "inuse": 0,
      "country": "RUS",
      "fax": "",
      "runservice": 0,
      "nbused": 0,
      "typepaid": 0,
      "expirationdate": "0000-00-00T00:00:00.000000",
      "vat-rn": null,
      "phone": "123456789",
      "username": "Muk",
      "creditlimit": 0,
      "autorefill": 0,
      "activated": "f",
      "sip-buddy": 0
    }
  }
}
```

### A2billingRestApi.CardController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/cards/1
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: uoabnd0d4emk2fs632vitu845od550ea
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/fax"
      },
      "detail": "Fax can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/redial"
      },
      "detail": "Redial can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/loginkey"
      },
      "detail": "Loginkey can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/tag"
      },
      "detail": "Tag can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/email-notification"
      },
      "detail": "Email notification can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/traffic-target"
      },
      "detail": "Traffic target can't be blank"
    }
  ]
}
```

#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/cards/2
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 0ulfl3j3r70pglb9gphpj198n7cb0hvs
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card",
    "id": "2",
    "attributes": {
      "initialbalance": "120.5",
      "voicemail-permitted": 42,
      "nbservice": 0,
      "tariff": 42,
      "enableexpire": 42,
      "block": null,
      "company-name": "some content",
      "lock-date": null,
      "voipcall": 0,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "some content",
      "last-notification": null,
      "company-website": "some content",
      "credit": "120.5",
      "language": "en",
      "lastname": "some content",
      "email": "some content",
      "credit-notification": 42,
      "redial": "some content",
      "lastuse": "0000-00-00T00:00:00.000000",
      "voicemail-activated": 42,
      "invoiceday": 42,
      "firstusedate": "0000-00-00T00:00:00.000000",
      "city": "some content",
      "useralias": "some content",
      "email-notification": "some content",
      "uipass": "some content",
      "simultaccess": 42,
      "expiredays": 0,
      "state": "some content",
      "mac-addr": "some content",
      "tag": "some content",
      "status": 42,
      "iax-buddy": 42,
      "vat": 120.5,
      "serial": 42,
      "loginkey": "some content",
      "servicelastrun": "0000-00-00T00:00:00.000000",
      "restriction": 42,
      "zipcode": "some content",
      "address": "some content",
      "num-trials-done": 42,
      "firstname": "some content",
      "lock-pin": null,
      "notify-email": 0,
      "currency": "USD",
      "discountdecimal": null,
      "inuse": 42,
      "country": "RUS",
      "fax": "some content",
      "runservice": 42,
      "nbused": 0,
      "typepaid": 42,
      "expirationdate": "0000-00-00T00:00:00.000000",
      "vat-rn": null,
      "phone": "1232131",
      "username": "some content",
      "creditlimit": 42,
      "autorefill": 0,
      "activated": "f",
      "sip-buddy": 42
    }
  }
}
```

## A2billingRestApi.CardGroupController
### A2billingRestApi.CardGroupController.create
#### does not create resource and renders errors when data is invalid
##### Request
* __Method:__ POST
* __Path:__ /api/card_groups
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: m0rd79j0ilulmjskghedtevu6ksbfns4
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/name"
      },
      "detail": "Name can't be blank"
    }
  ]
}
```

#### creates and renders resource when data is valid
##### Request
* __Method:__ POST
* __Path:__ /api/card_groups
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 37hd9fu329f80hceci0rskd2keh4jd06
location: /api/card_groups/8
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-group",
    "id": "8",
    "attributes": {
      "users-perms": 42,
      "provisioning": null,
      "name": "some content",
      "description": "some content"
    }
  }
}
```

### A2billingRestApi.CardGroupController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/card_groups/9
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: ofhls23lqc2suajl0pcapagad5tgtm3s
```
* __Response body:__
```json

```

### A2billingRestApi.CardGroupController.index
#### lists all entries on index
##### Request
* __Method:__ GET
* __Path:__ /api/card_groups
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: golu45g3icc71ioad4gsp2744s0g12ab
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": []
}
```

### A2billingRestApi.CardGroupController.show
#### shows chosen resource
##### Request
* __Method:__ GET
* __Path:__ /api/card_groups/10
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 95io6sidnthh700n241ha49nhbksfojk
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-group",
    "id": "10",
    "attributes": {
      "users-perms": 0,
      "provisioning": null,
      "name": "Poliwhirl",
      "description": "Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love."
    }
  }
}
```

### A2billingRestApi.CardGroupController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_groups/6
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: thci2mqui7c4mn3cjphknpd9j5a5mgsk
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/name"
      },
      "detail": "Name can't be blank"
    }
  ]
}
```

#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_groups/7
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: vf7c5nh4i4u0vmkcih8sc45f6p7ciemv
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-group",
    "id": "7",
    "attributes": {
      "users-perms": 42,
      "provisioning": null,
      "name": "some content",
      "description": "some content"
    }
  }
}
```

## A2billingRestApi.CardSeriaController
### A2billingRestApi.CardSeriaController.create
#### does not create resource and renders errors when data is invalid
##### Request
* __Method:__ POST
* __Path:__ /api/card_series
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 7bfde881gch78qc7vkddavg1h752hlaj
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/name"
      },
      "detail": "Name can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/value"
      },
      "detail": "Value can't be blank"
    }
  ]
}
```

#### creates and renders resource when data is valid
##### Request
* __Method:__ POST
* __Path:__ /api/card_series
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: p2h2sie5l3t2p19gp52n2unrqs7fk222
location: /api/card_series/7
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-seria",
    "id": "7",
    "attributes": {
      "value": 42,
      "name": "some content",
      "description": "some content"
    }
  }
}
```

### A2billingRestApi.CardSeriaController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/card_series/8
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: dkkdi117dsdkq0ei31qk0l8egscda899
```
* __Response body:__
```json

```

### A2billingRestApi.CardSeriaController.index
#### lists all entries on index
##### Request
* __Method:__ GET
* __Path:__ /api/card_series
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: tf381cnbjkupfqg88gpoiilp0heudohb
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": []
}
```

### A2billingRestApi.CardSeriaController.show
#### shows chosen resource
##### Request
* __Method:__ GET
* __Path:__ /api/card_series/9
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: phqp5hdvbpgjfkobkvm1hnu3tdkj3kah
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-seria",
    "id": "9",
    "attributes": {
      "value": 123,
      "name": "Machamp",
      "description": null
    }
  }
}
```

### A2billingRestApi.CardSeriaController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_series/5
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: tikgfckldv4ue7q98eu6i6eivnq9636a
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/name"
      },
      "detail": "Name can't be blank"
    }
  ]
}
```

#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_series/6
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 04ek2l018oontcf9s1bbov7ofnnrm5g4
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-seria",
    "id": "6",
    "attributes": {
      "value": 42,
      "name": "some content",
      "description": "some content"
    }
  }
}
```

## A2billingRestApi.DidgroupController
### A2billingRestApi.DidgroupController.create
#### does not create resource and renders errors when data is invalid
##### Request
* __Method:__ POST
* __Path:__ /api/didgroups
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: vq5suqrrr9s4gl3sdl77bbcqfkcc14o7
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/didgroupname"
      },
      "detail": "Didgroupname can't be blank"
    }
  ]
}
```

#### creates and renders resource when data is valid
##### Request
* __Method:__ POST
* __Path:__ /api/didgroups
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: rf3rtvbqt6tugoqkk46iudq624avbodd
location: /api/didgroups/7
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "didgroup",
    "id": "7",
    "attributes": {
      "didgroupname": "some content",
      "creationdate": null
    }
  }
}
```

### A2billingRestApi.DidgroupController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/didgroups/8
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: uu6oh6m9s9uvo8pg9n6o314otevmfva4
```
* __Response body:__
```json

```

### A2billingRestApi.DidgroupController.index
#### lists all entries on index
##### Request
* __Method:__ GET
* __Path:__ /api/didgroups
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: dg813orc8rqhmpmsht6ct7a9cre1smq0
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": []
}
```

### A2billingRestApi.DidgroupController.show
#### shows chosen resource
##### Request
* __Method:__ GET
* __Path:__ /api/didgroups/9
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: mi56ip589c2upbhumkp9uj6d78vds728
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "didgroup",
    "id": "9",
    "attributes": {
      "didgroupname": "some name",
      "creationdate": "2017-07-28T16:14:41.000000"
    }
  }
}
```

### A2billingRestApi.DidgroupController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/didgroups/5
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: rc67jnt4jdsujf2r2q4p25ak5rdmcq40
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/didgroupname"
      },
      "detail": "Didgroupname can't be blank"
    }
  ]
}
```

#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/didgroups/6
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 533davj52u93ubb7qci4fmd0rchc14k8
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "didgroup",
    "id": "6",
    "attributes": {
      "didgroupname": "some content",
      "creationdate": "2017-07-28T16:14:41.000000"
    }
  }
}
```

## A2billingRestApi.TimezoneController
### A2billingRestApi.TimezoneController.create
#### does not create resource and renders errors when data is invalid
##### Request
* __Method:__ POST
* __Path:__ /api/timezones
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 0ft4ijvbpur7hkrls7n9r82rsieq8qrj
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/gmtzone"
      },
      "detail": "Gmtzone can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/gmttime"
      },
      "detail": "Gmttime can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/gmtoffset"
      },
      "detail": "Gmtoffset can't be blank"
    }
  ]
}
```

#### creates and renders resource when data is valid
##### Request
* __Method:__ POST
* __Path:__ /api/timezones
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: qc0a6qlguneln190s8ngngle9mai49qo
location: /api/timezones/78
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "timezone",
    "id": "78",
    "attributes": {
      "updated-at": null,
      "inserted-at": null,
      "gmtzone": "some content",
      "gmttime": "some content",
      "gmtoffset": 1
    }
  }
}
```

### A2billingRestApi.TimezoneController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/timezones/79
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: t8ema5i7tsbdkol53uoqinn7esr0c42j
```
* __Response body:__
```json

```

### A2billingRestApi.TimezoneController.index
#### lists all entries on index
##### Request
* __Method:__ GET
* __Path:__ /api/timezones
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: b7114htpasijshkhfh814s523u7g2a5u
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": []
}
```

### A2billingRestApi.TimezoneController.show
#### shows chosen resource
##### Request
* __Method:__ GET
* __Path:__ /api/timezones/80
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: 8h4cms5jihk2mdfiesngtm4bhm41bt22
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "timezone",
    "id": "80",
    "attributes": {
      "updated-at": null,
      "inserted-at": null,
      "gmtzone": null,
      "gmttime": null,
      "gmtoffset": 0
    }
  }
}
```

### A2billingRestApi.TimezoneController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/timezones/76
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: gjnhn2smeq2qpddv6b0posvarhauvmb0
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "errors": [
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/gmtzone"
      },
      "detail": "Gmtzone can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/gmttime"
      },
      "detail": "Gmttime can't be blank"
    }
  ]
}
```

#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/timezones/77
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/vnd.api+json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: cr2987sqmlqd5n86pdgldtjikfoamlbe
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "timezone",
    "id": "77",
    "attributes": {
      "updated-at": null,
      "inserted-at": null,
      "gmtzone": "some content",
      "gmttime": "some content",
      "gmtoffset": 1
    }
  }
}
```

## A2billingRestApi.TokenController
### A2billingRestApi.TokenController.create
#### creates JWT token for existing user with correct password
##### Request
* __Method:__ POST
* __Path:__ /token
* __Request headers:__
```
accept: application/vnd.api+json
content-type: application/vnd.api+json
```
##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: h2hgmkvneo1nfesmbmr26n9iqae9ubqi
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJVc2VyOjkiLCJleHAiOjE3NjA0MzMyODEsImlhdCI6MTUwMTIzMzI4MSwiaXNzIjoiQTJiaWxsaW5nUmVzdEFwaSIsImp0aSI6ImVmNmQzZGY5LTRlNjAtNGMwMy05N2IxLThiMjhiMjU0NWIxZSIsInBlbSI6e30sInN1YiI6IlVzZXI6OSIsInR5cCI6ImFjY2VzcyJ9.zAR8doEJzk9SR5PXkpWxl8rJvhUK1Agj7xq3EyJHkOBJI7Ty4yxgmjpSgdqSHw852OSahkf-AeCy6YxBBQkd_g
```
* __Response body:__
```json
{
  "jwt": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJVc2VyOjkiLCJleHAiOjE3NjA0MzMyODEsImlhdCI6MTUwMTIzMzI4MSwiaXNzIjoiQTJiaWxsaW5nUmVzdEFwaSIsImp0aSI6ImVmNmQzZGY5LTRlNjAtNGMwMy05N2IxLThiMjhiMjU0NWIxZSIsInBlbSI6e30sInN1YiI6IlVzZXI6OSIsInR5cCI6ImFjY2VzcyJ9.zAR8doEJzk9SR5PXkpWxl8rJvhUK1Agj7xq3EyJHkOBJI7Ty4yxgmjpSgdqSHw852OSahkf-AeCy6YxBBQkd_g"
}
```

