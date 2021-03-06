{
    "id": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "pShootable",
    "eventList": [
        {
            "id": "c2bb6c79-a2b4-455c-9c9c-4fdc3909d2e4",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a"
        },
        {
            "id": "b1aed48f-de96-4bc0-a8e6-ff133179c503",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a"
        },
        {
            "id": "6c5ada84-d865-4c99-a4a3-dc631dfc8510",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "6e728f26-dd64-4c36-9c69-f483a2d38ae5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "hp_max",
            "varType": 0
        },
        {
            "id": "621036c3-30a9-49fd-9771-8034b316ebb2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "flash",
            "varType": 0
        },
        {
            "id": "ab26baac-e1dc-4006-9cf0-df8b32336c42",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hitfrom",
            "varType": 0
        },
        {
            "id": "cfc8c9ce-0fa2-4c1e-a075-6eefe4892b01",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "sEnemyDead",
            "varName": "death_sprite",
            "varType": 5
        },
        {
            "id": "8059b9a6-f40c-43cc-a62e-bfc38788b8bc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "death_hsp",
            "varType": 0
        },
        {
            "id": "dc95981e-0f28-4002-828e-6e1a73e298ad",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "death_vsp",
            "varType": 0
        },
        {
            "id": "a051e16d-6f79-4b7b-977e-4a345fcd4c6e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "fade",
            "varType": 3
        },
        {
            "id": "ac03cbc3-90bb-4f3a-a670-45db6fdb9129",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "death_image_index",
            "varType": 0
        },
        {
            "id": "80151a03-7797-4714-af82-6ec177d5c9dd",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "smoke",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}