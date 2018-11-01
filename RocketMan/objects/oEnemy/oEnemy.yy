{
    "id": "33da57de-89d2-4fd0-a54c-9b9cceea9c22",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "oEnemy",
    "eventList": [
        {
            "id": "2668d004-5916-416e-8335-bb264abba620",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "33da57de-89d2-4fd0-a54c-9b9cceea9c22"
        },
        {
            "id": "9b5dec62-6ea7-4ef4-aa80-a318934e259f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "33da57de-89d2-4fd0-a54c-9b9cceea9c22"
        },
        {
            "id": "8504f174-8eb6-47ae-bda0-196b5aabaa09",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "33da57de-89d2-4fd0-a54c-9b9cceea9c22"
        },
        {
            "id": "8ef44639-f512-40da-b09d-fa594384e52b",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "2db3afed-eded-4caa-b3c6-e263c636bcaa",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "33da57de-89d2-4fd0-a54c-9b9cceea9c22"
        }
    ],
    "maskSpriteId": "b507da60-76e8-4c05-8172-ac471c04d798",
    "overriddenProperties": [
        {
            "id": "0fca80d6-e0b2-481a-b2f7-3c9d8484b6da",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a",
            "propertyId": "c7d20276-fa1a-48a3-886f-d679e88e587a",
            "value": "3"
        },
        {
            "id": "c07072fb-29fc-4ae6-8534-3758ee1f37b2",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a",
            "propertyId": "cfc8c9ce-0fa2-4c1e-a075-6eefe4892b01",
            "value": "sEnemyDead"
        },
        {
            "id": "d1e51421-10ad-4f3c-9409-603095eb3653",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a",
            "propertyId": "a051e16d-6f79-4b7b-977e-4a345fcd4c6e",
            "value": "False"
        }
    ],
    "parentObjectId": "653a39fe-a87b-4459-b82d-e7f1a7bcdc9a",
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
            "id": "c332b870-c44b-413b-8004-4dd0a9a09815",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "walksp",
            "varType": 0
        },
        {
            "id": "52dcbf0e-65a6-4302-ae3c-2ad022f4088d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "afraidOfHeights",
            "varType": 3
        },
        {
            "id": "2bec0627-a6e4-4a38-b50b-d51ecdcefa1f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "grounded",
            "varType": 3
        },
        {
            "id": "f1220c67-9133-4d63-b999-71648c43eef1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "weapon",
            "varType": 0
        },
        {
            "id": "98092865-f68a-44e8-83dd-d4812174494b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "damage",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "b507da60-76e8-4c05-8172-ac471c04d798",
    "visible": true
}