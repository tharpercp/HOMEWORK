
function cb(el) {
    return "Mx. " + el + " Jingleheimer Schmidt";
  }

Array.prototype.myEach = function(cb) {
    for (let i = 0; i < this.length; i++){
      cb(this[i]);
    }
}


Array.prototype.titleize = function(cb) {
    this.myEach(ele => console.log(cb(ele)));
  }
  
  let arr = ["Mary", "Brian", "Leo"]
  
  console.log(arr.titleize(cb));


  
  function Elephant(name, height, tricks) { 
    this.name = name;
    this.height = height;
    this.tricks = tricks;   
}


Elephant.prototype.trumpet = function () {
    console.log(this.name + " the elephant goes phrRRRRRRRRRR!!!!!");
}

Elephant.prototype.grow = function () {
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}



Elephant.prototype.play = function() {
    let randomNumber = Math.random()*this.tricks.length;
    console.log(this.tricks[(randomNumber)]);
}

let babar = new Elephant('Babar', 120, ["Riding a bike"]);

babar.trumpet();
babar.grow();
babar.addTrick("Juggling")
babar.play();

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);


let herd = [babar, ellie, charlie, kate, micah]

function paradeHelper(el) {
    console.log(this.name + " is trotting by!")
}


Array.prototype.march = function(paradeHelper) {
    for (let i = 0; i < this.length; i++){
      cb(this[i]);
    }
}

herd.march(paradeHelper);