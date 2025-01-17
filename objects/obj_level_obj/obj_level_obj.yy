{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_level_obj",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":12,"eventType":7,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "System",
    "path": "folders/Objects/System.yy",
  },
  "parentObjectId": {
    "name": "obj_gameplay_parent",
    "path": "objects/obj_gameplay_parent/obj_gameplay_parent.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"can_despawn","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"True","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"zone_index","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":255.0,"rangeMin":-3.0,"value":"-1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"level_id","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":255.0,"rangeMin":-1.0,"value":"-1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"fast_forward","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"True","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"difficulty","filters":[],"listItems":[
        "\"Easy\"",
        "\"Normal\"",
        "\"Hard\"",
      ],"multiselect":true,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"\"Easy\", \"Normal\", \"Hard\"","varType":6,},
  ],
  "solid": false,
  "spriteId": null,
  "spriteMaskId": null,
  "visible": true,
}