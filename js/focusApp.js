let etat = document.getElementById("btn-etat");
let verif = document.getElementById("btn-verif");
let modif = document.getElementById("btn-modif");

//variable des div a cacher et a afficher

let block1 = document.getElementById("block1");

let block2 = document.getElementById("block2");

let block3 = document.getElementById("block3");

//fonction de gestion des evenements
function togg(){

  if(getComputedStyle(block1).display != "none"){
    block2.style.display = "none";
    block3.style.display = "none";
  }
  if(getComputedStyle(block2).display != "none"){
    block1.style.display = "none";
    block3.style.display = "none";
  }
  if(getComputedStyle(block3).display != "none"){
    block2.style.display = "none";
    block1.style.display = "none";
  }
};

etat.onclick = togg;
verif.onclick = togg;
modif.onclick= togg; 