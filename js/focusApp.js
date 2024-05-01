let etat = document.getElementById("btn-etat");
let verif = document.getElementById("btn-verif");
let modif = document.getElementById("btn-modif");

//variable des div a cacher et a afficher

let block1 = document.getElementById("block1");

let block2 = document.getElementById("block2");

let block3 = document.getElementById("block3");

//fonction de gestion des evenements
 etat.addEventListener('click', () => {

  block1.style.display= "block";
  block2.style.display = "none";
  block3.style.display = "none";

 });

 verif.addEventListener('click', () => {

  block2.style.display= "block";
  block1.style.display = "none";
  block3.style.display = "none";

 });

 modif.addEventListener('click', () => {

  block3.style.display= "block";
  block2.style.display = "none";
  block1.style.display = "none";

 });