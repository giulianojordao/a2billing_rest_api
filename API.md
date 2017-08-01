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
x-request-id: 1aus0m7vkbbp13is2sf61o0h6nhsdj3b
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
        "pointer": "/data/attributes/redial"
      },
      "detail": "Redial can't be blank"
    },
    {
      "title": "can't be blank",
      "source": {
        "pointer": "/data/attributes/tag"
      },
      "detail": "Tag can't be blank"
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
x-request-id: o36l3fj0dognbgutfmfqsv4s0t12qr54
location: /api/cards/5
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
      "initialbalance": null,
      "voicemail-permitted": null,
      "nbservice": null,
      "tariff": null,
      "enableexpire": null,
      "block": null,
      "company-name": "Boyer Ltd",
      "lock-date": null,
      "voipcall": null,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "",
      "last-notification": null,
      "company-website": "http://weber.net",
      "credit": null,
      "language": null,
      "lastname": "Cremin",
      "email": "kaylie1967@purdy.net",
      "credit-notification": null,
      "redial": "2134",
      "lastuse": null,
      "voicemail-activated": null,
      "invoiceday": null,
      "firstusedate": null,
      "city": "North Celine",
      "useralias": "Steel",
      "email-notification": "",
      "uipass": "password",
      "simultaccess": null,
      "expiredays": null,
      "state": "Arkansas",
      "mac-addr": null,
      "tag": "Watchet",
      "status": null,
      "iax-buddy": null,
      "vat": null,
      "serial": null,
      "loginkey": "",
      "servicelastrun": null,
      "restriction": null,
      "zipcode": "10136",
      "address": "8912 Greenfelder Well Suite 260",
      "num-trials-done": null,
      "firstname": "Loyce",
      "lock-pin": null,
      "notify-email": null,
      "currency": null,
      "discountdecimal": null,
      "inuse": null,
      "country": "RUS",
      "fax": "",
      "runservice": null,
      "nbused": null,
      "typepaid": null,
      "expirationdate": null,
      "vat-rn": null,
      "phone": "123456789",
      "username": "Porygon",
      "creditlimit": null,
      "autorefill": null,
      "activated": null,
      "sip-buddy": null
    }
  }
}
```

### A2billingRestApi.CardController.delete
#### deletes chosen resource
##### Request
* __Method:__ DELETE
* __Path:__ /api/cards/7
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
x-request-id: b6v2gve6sg9rfmcqje99vc93s0cd87dt
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
x-request-id: d2f8vjq1ff3m5t9hdb0ddbc9tkecmjac
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
* __Path:__ /api/cards/6
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
x-request-id: qm55huirp0k2u39a2in1ihc2n40fhjp6
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card",
    "id": "6",
    "attributes": {
      "initialbalance": "0.00000",
      "voicemail-permitted": 0,
      "nbservice": 0,
      "tariff": 0,
      "enableexpire": 0,
      "block": null,
      "company-name": "McLaughlin Ltd",
      "lock-date": null,
      "voipcall": 0,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "",
      "last-notification": null,
      "company-website": "http://weissnat.org",
      "credit": "0.00000",
      "language": "en",
      "lastname": "Renner",
      "email": "maximo_johnson@berge.info",
      "credit-notification": -1,
      "redial": "2134",
      "lastuse": "0000-00-00T00:00:00.000000",
      "voicemail-activated": 0,
      "invoiceday": 1,
      "firstusedate": "0000-00-00T00:00:00.000000",
      "city": "Port Rutheberg",
      "useralias": "Agent Huntress",
      "email-notification": "",
      "uipass": "password",
      "simultaccess": 0,
      "expiredays": 0,
      "state": "Pennsylvania",
      "mac-addr": "00-00-00-00-00-00",
      "tag": "Watchet",
      "status": 1,
      "iax-buddy": 0,
      "vat": 0.0,
      "serial": null,
      "loginkey": "",
      "servicelastrun": "0000-00-00T00:00:00.000000",
      "restriction": 0,
      "zipcode": "23134-1890",
      "address": "95137 Amiya Groves Suite 051",
      "num-trials-done": 0,
      "firstname": "Susanna",
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
      "username": "Aerodactyl",
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
* __Path:__ /api/cards/8
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
x-request-id: m64pgnra9i28khal7mqbhhfg7tje6g36
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
    }
  ]
}
```

#### updates and renders chosen resource when data is valid
##### Request
* __Method:__ PUT
* __Path:__ /api/cards/9
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
x-request-id: nhq78fu1ofkfku55g8ft6jlvm40l39ej
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card",
    "id": "9",
    "attributes": {
      "initialbalance": "0.00000",
      "voicemail-permitted": 0,
      "nbservice": 0,
      "tariff": 0,
      "enableexpire": 0,
      "block": null,
      "company-name": "O'Hara, Carter and McKenzie",
      "lock-date": null,
      "voipcall": 0,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "",
      "last-notification": null,
      "company-website": "https://mckenzie.com",
      "credit": "0.00000",
      "language": "en",
      "lastname": "Carroll",
      "email": "lucinda.volkman@bauch.name",
      "credit-notification": -1,
      "redial": "2134",
      "lastuse": "0000-00-00T00:00:00.000000",
      "voicemail-activated": 0,
      "invoiceday": 1,
      "firstusedate": "0000-00-00T00:00:00.000000",
      "city": "Fritschborough",
      "useralias": "Namorita",
      "email-notification": "",
      "uipass": "password",
      "simultaccess": 0,
      "expiredays": 0,
      "state": "Kentucky",
      "mac-addr": "00-00-00-00-00-00",
      "tag": "Watchet",
      "status": 1,
      "iax-buddy": 0,
      "vat": 0.0,
      "serial": null,
      "loginkey": "",
      "servicelastrun": "0000-00-00T00:00:00.000000",
      "restriction": 0,
      "zipcode": "06145",
      "address": "2196 Funk Gateway Apt. 036",
      "num-trials-done": 0,
      "firstname": "Jodie",
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
      "username": "Exeggcute",
      "creditlimit": 0,
      "autorefill": 0,
      "activated": "f",
      "sip-buddy": 0
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
x-request-id: 7bpjjo67phd2gbe3q61htdqfem3m8b6r
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
x-request-id: qf0tg5bhvmvqgtif7tmkia96ilmdroej
location: /api/card_groups/6
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-group",
    "id": "6",
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
* __Path:__ /api/card_groups/8
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
x-request-id: mjni37b64lhlc7k1qtq79lh02clbutup
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
x-request-id: 3ru9lik04fb93v4i74t72skc263bik89
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
x-request-id: 8nlim7gl9t3rts048cjtqjpbo18lmaqi
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
      "users-perms": 0,
      "provisioning": null,
      "name": "Cubone",
      "description": "Though this be madness, yet there is method in 't."
    }
  }
}
```

### A2billingRestApi.CardGroupController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_groups/9
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
x-request-id: v3vg4qtfdus1n3at0f1i3jql0696gooe
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
x-request-id: 24bbpn0vbmkqcgj84iqgvrd7n21ce4fs
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
x-request-id: 56ngm3kqlb1244fjraj5nt9grdnms663
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
x-request-id: qgmb2sfn9a8pheipohtuib6h81hqoitk
location: /api/card_series/5
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-seria",
    "id": "5",
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
* __Path:__ /api/card_series/7
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
x-request-id: hue0ei0iej84rc86fohq6n962j1dvk1h
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
x-request-id: dhpmpjaun3rkp75cj87cqed07evkp94k
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
x-request-id: cbsbsc8fkvru8l4d0d0f2cedo8ildbdj
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
      "value": 123,
      "name": "Omastar",
      "description": null
    }
  }
}
```

### A2billingRestApi.CardSeriaController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_series/8
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
x-request-id: 011qhg5ecqhivf23lngdutuel78fd4u2
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
x-request-id: rjjfts76ikbcup74r3b0v700gmon5jog
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
x-request-id: gsv5306ld66ch8ati84b5h6sd2cpog9b
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
x-request-id: c5gik6for7gs5tspguq4ru6qoe7s23sj
location: /api/didgroups/5
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "didgroup",
    "id": "5",
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
* __Path:__ /api/didgroups/7
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
x-request-id: n0akplqtn3dd0f2i4mfucvt7e4b6j7mg
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
x-request-id: m7b6qkf8q2o4u4875991rt7bklmgf3pi
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
x-request-id: qbcr7tg4hn0e106c6vvblmnu2ujpna72
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
      "didgroupname": "some name",
      "creationdate": "2017-08-01T11:31:12.000000"
    }
  }
}
```

### A2billingRestApi.DidgroupController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/didgroups/8
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
x-request-id: mgmmdnpols0ct2vu5odfde26bp90lcu5
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
x-request-id: 4mg3itus6ovii7tgco42bj0us52fi52r
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
      "didgroupname": "some content",
      "creationdate": "2017-08-01T11:31:12.000000"
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
x-request-id: optdsg8lgq6j90p1tl12rbb8bo26q2ie
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
x-request-id: 1ukvp7jg83rl1bhck2gqlvcuc6r68t9j
location: /api/timezones/76
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "timezone",
    "id": "76",
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
* __Path:__ /api/timezones/78
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
x-request-id: 0okdplabmholao8el4n7qfeos6k3cerv
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
x-request-id: fh0ldoll56nic8i4l8spluvt0mi916lk
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
x-request-id: q10bidih88a4v3ll5c7pq3sm9bib5291
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
* __Path:__ /api/timezones/79
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
x-request-id: v3628t65an2l3kmqqtkicqr79cjnqfht
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
x-request-id: i2ljg3hq4cenfkfu4kmp7nbmre7t1ddm
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
x-request-id: e4lh1j94o618pm5ivkhs29o3s3j6ev60
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJVc2VyOjE3IiwiZXhwIjoxNzYwNzYxODcyLCJpYXQiOjE1MDE1NjE4NzIsImlzcyI6IkEyYmlsbGluZ1Jlc3RBcGkiLCJqdGkiOiI3ZjRhZjc2YS1iYWFmLTQyZDEtYWI0Yi1lOTA5YjlkOThhODMiLCJwZW0iOnt9LCJzdWIiOiJVc2VyOjE3IiwidHlwIjoiYWNjZXNzIn0.ojLkW9OB9slzRJu8WkGrMZSv57d5RKa_xdsj_dWObX_yNrkWWmUNmabOAWGDN1vlShwzTOoSq7S_aFBWuqdg_Q
```
* __Response body:__
```json
{
  "jwt": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJVc2VyOjE3IiwiZXhwIjoxNzYwNzYxODcyLCJpYXQiOjE1MDE1NjE4NzIsImlzcyI6IkEyYmlsbGluZ1Jlc3RBcGkiLCJqdGkiOiI3ZjRhZjc2YS1iYWFmLTQyZDEtYWI0Yi1lOTA5YjlkOThhODMiLCJwZW0iOnt9LCJzdWIiOiJVc2VyOjE3IiwidHlwIjoiYWNjZXNzIn0.ojLkW9OB9slzRJu8WkGrMZSv57d5RKa_xdsj_dWObX_yNrkWWmUNmabOAWGDN1vlShwzTOoSq7S_aFBWuqdg_Q"
}
```

