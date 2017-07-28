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
x-request-id: 0ji9lsaae0c2o1lv8m9gsflm6v2lk7tn
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
x-request-id: i8pnaoj1aoe79a4qrcg59t46gph6oa0u
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
x-request-id: gu70426motvdgf1im94or3lsfhms93sm
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
x-request-id: a8m1j67taf31k9h4fvdl0orgcag9ev2s
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
x-request-id: 2ebc7gaq6skhohsi9f2vtseul0jncvof
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
      "initialbalance": "0.00000",
      "voicemail-permitted": 0,
      "nbservice": 0,
      "tariff": 0,
      "enableexpire": 0,
      "block": null,
      "company-name": "Schamberger and Sons",
      "lock-date": null,
      "voipcall": 0,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "",
      "last-notification": null,
      "company-website": "https://sporer.info",
      "credit": "0.00000",
      "language": "en",
      "lastname": "Waters",
      "email": "abigail1965@connelly.name",
      "credit-notification": -1,
      "redial": "",
      "lastuse": "0000-00-00T00:00:00.000000",
      "voicemail-activated": 0,
      "invoiceday": 1,
      "firstusedate": "0000-00-00T00:00:00.000000",
      "city": "Maeganbury",
      "useralias": "Giant Nina Theroux Wolf",
      "email-notification": "",
      "uipass": "password",
      "simultaccess": 0,
      "expiredays": 0,
      "state": "Utah",
      "mac-addr": "00-00-00-00-00-00",
      "tag": "",
      "status": 1,
      "iax-buddy": 0,
      "vat": 0.0,
      "serial": null,
      "loginkey": "",
      "servicelastrun": "0000-00-00T00:00:00.000000",
      "restriction": 0,
      "zipcode": "93696-4699",
      "address": "8 Jacobson Drive Apt. 441",
      "num-trials-done": 0,
      "firstname": "Bryce",
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
      "username": "Dragonair",
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
x-request-id: gq6fpf1f9m6tlpqpv70b70ghegg0fmnk
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
* __Path:__ /api/cards/3
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
x-request-id: qgsflc606c4m9rltcks17bsv3171vhgc
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
x-request-id: kdvvpfjq0qa1rpf758q0hndnsvl40d1r
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
x-request-id: gd968veih67ihua307ji7bopemkllegc
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
* __Path:__ /api/card_groups/5
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
x-request-id: e4sq14b1i9v6gkpi9fh5sd2jbvba7gut
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
x-request-id: 0d39od9b57ges0t9pqnpiscj9eoipd4e
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
* __Path:__ /api/card_groups/3
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
x-request-id: buuu054n897s17apnr96d8p1a8cp3jmr
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-group",
    "id": "3",
    "attributes": {
      "users-perms": 0,
      "provisioning": null,
      "name": "Koffing",
      "description": "I will speak daggers to her, but use none."
    }
  }
}
```

### A2billingRestApi.CardGroupController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_groups/2
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
x-request-id: et33i14148jmtpr0al68c2svfv069re9
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
* __Path:__ /api/card_groups/4
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
x-request-id: e1ebevdpblmpmvqk5audbsamt42606ne
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-group",
    "id": "4",
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
x-request-id: 3gvc058nkb1a91fk8g675kdasj378oij
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
x-request-id: 4gkn7rm18n1l1jm7f05a5b75lrmmf7vt
location: /api/card_series/9
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
x-request-id: 8e8qlu1tg5d2c1099fpsrf2ucloc6fj4
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
x-request-id: erc1pjpg78k7fl6ruvv9vk0lfnjp6025
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
x-request-id: mta6c25hulrknkn5gr86jiv93jg6579i
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
      "name": "Poliwhirl",
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
x-request-id: nnj5gt4juvicmgnef9s572p9335uecvv
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
* __Path:__ /api/card_series/7
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
x-request-id: 16ikl3uqismrqao1bpsn4qkdahnfiv71
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
x-request-id: c22jgqrk92ls36s8lbvt27a2pdkdcrlp
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
x-request-id: i8t5e0sulg5dbj72n47kvmaepqdl9r1h
location: /api/didgroups/9
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
x-request-id: k044dnfnem1f0rcnjf9vb33hb70fl10u
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
x-request-id: ae0ck56a7ct3np764hsqkpii5bgc3mkm
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
x-request-id: acbdv80vaohpjg9k5h280b7ns8md3fvn
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
      "creationdate": "2017-07-28T12:32:23.000000"
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
x-request-id: jn26lrsj7gsoudkg7amcjcn1lt4t65hd
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
* __Path:__ /api/didgroups/7
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
x-request-id: 5n2lra53ejn6tf0j20tliqkg6v4mt55n
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
      "creationdate": "2017-07-28T12:32:23.000000"
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
x-request-id: 8mrft7sa36gb8idsutvf8cdo77dqhe9n
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
x-request-id: ianakph8ujmfv45e6hnn6v77id569fq0
location: /api/timezones/80
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
x-request-id: t56btva7akie2k1cjjmvul1cqv15u0f4
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
x-request-id: qjloc3ji4tt4pgkurrniicietfpd67ds
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
x-request-id: mmqeenimtm9n9a6p6ifv10t19ff6h9q0
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
x-request-id: hdcqh1v25ljond4s4bf6psum2dsek8v0
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
* __Path:__ /api/timezones/78
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
x-request-id: fhbnfsjut1mhiuj63770d57eheoa5nq2
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

