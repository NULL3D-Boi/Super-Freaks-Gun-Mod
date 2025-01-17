{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_buckleroid",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":10,"eventType":7,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":12,"eventType":7,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "parentObjectId": {
    "name": "obj_enemy",
    "path": "objects/obj_enemy/obj_enemy.yy",
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"rotate_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":8.0,"rangeMin":-8.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"shoot_frequency","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":255.0,"rangeMin":0.0,"value":"128","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"shoot_delay","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":255.0,"rangeMin":-255.0,"value":"0","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_buckleroid",
    "path": "sprites/spr_buckleroid/spr_buckleroid.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}