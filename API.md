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
x-request-id: cvdsrgfujams47qu5clfosnu35q6h2hi
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
x-request-id: bcictrsgqdjveog2ig4llqebrlio093e
location: /api/cards/1
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card",
    "id": "1",
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
* __Path:__ /api/cards/3
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
x-request-id: 4tnahj7amnjs2hkulcroukclp4m1pu7f
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
x-request-id: hlr1tj9d36ebno95o53cdgq4oo1j1r5r
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
* __Path:__ /api/cards/4
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
x-request-id: d8jvkggvnskrf725ug6b5o00hhaoeujb
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card",
    "id": "4",
    "attributes": {
      "initialbalance": "0.00000",
      "voicemail-permitted": 0,
      "nbservice": 0,
      "tariff": 0,
      "enableexpire": 0,
      "block": null,
      "company-name": "Schiller Group",
      "lock-date": null,
      "voipcall": 0,
      "traffic": null,
      "max-concurrent": null,
      "traffic-target": "",
      "last-notification": null,
      "company-website": "http://gerhold.biz",
      "credit": "0.00000",
      "language": "en",
      "lastname": "Hilpert",
      "email": "kali2060@koelpin.info",
      "credit-notification": -1,
      "redial": "",
      "lastuse": "0000-00-00T00:00:00.000000",
      "voicemail-activated": 0,
      "invoiceday": 1,
      "firstusedate": "0000-00-00T00:00:00.000000",
      "city": "West Keeganport",
      "useralias": "Changeling",
      "email-notification": "",
      "uipass": "password",
      "simultaccess": 0,
      "expiredays": 0,
      "state": "South Dakota",
      "mac-addr": "00-00-00-00-00-00",
      "tag": "",
      "status": 1,
      "iax-buddy": 0,
      "vat": 0.0,
      "serial": null,
      "loginkey": "",
      "servicelastrun": "0000-00-00T00:00:00.000000",
      "restriction": 0,
      "zipcode": "65923",
      "address": "50978 Kunde Burg Apt. 984",
      "num-trials-done": 0,
      "firstname": "Ida",
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
      "username": "Tentacool",
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
* __Path:__ /api/cards/5
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
x-request-id: 7t318hd28r09i24ih7mjl31qibmd344d
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
x-request-id: qd24trm4tdparvg8o9ruj2efalqiio2f
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
x-request-id: 33ih8lu25m9d27tir1a1rohdqrjnqo18
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
x-request-id: j8ujjo2upg7vb31fgi7b613ullugt2d2
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
x-request-id: q12smbmtvhgeeihilhulbtn00nq7bk94
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
x-request-id: i5oorfsb3p32jqs69t9cr6ukl1f7omta
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
* __Path:__ /api/card_groups/9
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
x-request-id: vho3tbfleain5ru1s5gqffqmrcddf6bc
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-group",
    "id": "9",
    "attributes": {
      "users-perms": 0,
      "provisioning": null,
      "name": "Marowak",
      "description": "That it should come to this!"
    }
  }
}
```

### A2billingRestApi.CardGroupController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_groups/10
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
x-request-id: 95v2hmj5b3kpf2jcblo34098a3fh3kh5
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
x-request-id: kcok12970fs0rrm8b00dkqp3foq87v3i
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
x-request-id: 2thfnusso4to3m4gigm1nfkdsaahstfl
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
x-request-id: 9t5lrfccqqqu61ql1hc78ufmnpphbjrh
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
x-request-id: qkmcbhsvo727s76rvqrb51jbrrdiqt3n
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
x-request-id: dfsbst7jjmavn0s5q64c37pl0ibqtdpd
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
* __Path:__ /api/card_series/8
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
x-request-id: in17umkc89hlb3722a7sss5otg89hka5
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "card-seria",
    "id": "8",
    "attributes": {
      "value": 123,
      "name": "Ditto",
      "description": null
    }
  }
}
```

### A2billingRestApi.CardSeriaController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/card_series/9
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
x-request-id: jj4p66rr02dor9ifdo4ol5g3oekvitpv
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
x-request-id: bi5kckdr1k46lpk7fjq9e0jtqhkltrt6
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
x-request-id: 47ersr1c4t3v4raj1oosb163i8k2785f
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
x-request-id: n3cdqlpg19ts235p6gr2jomr1vsichnv
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
x-request-id: o8fsq05kovkv6kqkqcsbhbmpivbrv3rs
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
x-request-id: fegkk58qcjmtaok4jqv03h7lper3vn0l
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
* __Path:__ /api/didgroups/8
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
x-request-id: acpcro2kqpnopfi1voakphvub644glts
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "didgroup",
    "id": "8",
    "attributes": {
      "didgroupname": "some name",
      "creationdate": "2017-07-28T16:29:17.000000"
    }
  }
}
```

### A2billingRestApi.DidgroupController.update
#### does not update chosen resource and renders errors when data is invalid
##### Request
* __Method:__ PUT
* __Path:__ /api/didgroups/9
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
x-request-id: uqtaupkkqgs1q98fnonilcmncgj34c6c
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
x-request-id: uh0iu37oasf28b5inc12glh1lv5qs1v6
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
      "creationdate": "2017-07-28T16:29:17.000000"
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
x-request-id: e6tnj1tb2mp6e2kr3bh9fvrk5nlt0jvj
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
x-request-id: ctugmfg654i3l5olqdbvrlqv2slcs0g3
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
x-request-id: hff7ojr58m91a4eb1sgko02mbk8d17hb
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
x-request-id: lrvnrp6at7q4nv0ddkqkf2deoemfc435
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
* __Path:__ /api/timezones/79
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
x-request-id: 89ho36v7p4vr46lhvtr4fsfn4kal9gac
```
* __Response body:__
```json
{
  "jsonapi": {
    "version": "1.0"
  },
  "data": {
    "type": "timezone",
    "id": "79",
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
* __Path:__ /api/timezones/80
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
x-request-id: b2jv2ol42cv6uptblo8d62bd0592crlh
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
x-request-id: oatd6gof782kr81negmaifg99312u54f
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
x-request-id: rq81pqns0sfu3tjtqk3a9moqhm2akq6l
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJVc2VyOjkiLCJleHAiOjE3NjA0MzQxNTYsImlhdCI6MTUwMTIzNDE1NiwiaXNzIjoiQTJiaWxsaW5nUmVzdEFwaSIsImp0aSI6IjFkNTQ1Mzc0LTlmM2YtNGZmMi1iOGIyLWIwNWVlOGI2MDBkZCIsInBlbSI6e30sInN1YiI6IlVzZXI6OSIsInR5cCI6ImFjY2VzcyJ9.ydtNKaDWgJgPmtCT5cBxPTdXODd57tx4AXEnYRNsqA_9d45rdobW5v08G5JD2J73N6DyW5yYyD9anJAMpdor5w
```
* __Response body:__
```json
{
  "jwt": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJVc2VyOjkiLCJleHAiOjE3NjA0MzQxNTYsImlhdCI6MTUwMTIzNDE1NiwiaXNzIjoiQTJiaWxsaW5nUmVzdEFwaSIsImp0aSI6IjFkNTQ1Mzc0LTlmM2YtNGZmMi1iOGIyLWIwNWVlOGI2MDBkZCIsInBlbSI6e30sInN1YiI6IlVzZXI6OSIsInR5cCI6ImFjY2VzcyJ9.ydtNKaDWgJgPmtCT5cBxPTdXODd57tx4AXEnYRNsqA_9d45rdobW5v08G5JD2J73N6DyW5yYyD9anJAMpdor5w"
}
```
