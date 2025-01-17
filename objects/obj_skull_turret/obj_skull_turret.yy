{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_skull_turret",
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
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"trigger_id","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":31.0,"rangeMin":-1.0,"value":"-1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"face_player","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"True","varType":3,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"weapon","filters":[],"listItems":[
        "\"Bomb\"",
        "\"Missile\"",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"\"Bomb\"","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"shoot_speed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":16.0,"rangeMin":0.5,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"shoot_frequency","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":255.0,"rangeMin":0.0,"value":"96","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"shoot_frequency_delay","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":255.0,"rangeMin":-255.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"ammo_amount","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":16.0,"rangeMin":-1.0,"value":"-1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"reload_timer","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":255.0,"rangeMin":8.0,"value":"8","varType":1,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_skull_turret_on",
    "path": "sprites/spr_skull_turret_on/spr_skull_turret_on.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}