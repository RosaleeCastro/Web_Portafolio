console.log("Vamos con la accesibilidad");

window.onload = function () {
  let zoom = 1;
  let modoClaro = false;
  let contraste = false;
  let fuenteGrande = false;

  console.log("Esto solo carga cuando la ventana haya cargado");

  let barra = document.createElement("div");
  barra.classList.add("jocarsa-accesibilidad");

  let cuerpo = document.querySelector("body");
  cuerpo.appendChild(barra);

  // ------------------------
  // ZOOM IN
  // ------------------------
  let zoomin = document.createElement("div");
  zoomin.textContent = "🔍";
  barra.appendChild(zoomin);

  zoomin.onclick = function () {
    if (zoom < 2) {
      zoom += 0.1;
      cuerpo.style.zoom = zoom;
      console.log("Zoom:", zoom);
    }
  };

  // ------------------------
  // ZOOM OUT
  // ------------------------
  let zoomout = document.createElement("div");
  zoomout.textContent = "🔎";
  barra.appendChild(zoomout);

  zoomout.onclick = function () {
    if (zoom > 0.5) {
      zoom -= 0.1;
      cuerpo.style.zoom = zoom;
      console.log("Zoom:", zoom);
    }
  };

  // ------------------------
  // CAMBIO DE TEMA
  // ------------------------
  let invertir = document.createElement("div");
  invertir.textContent = "☀";
  invertir.title = "Cambiar tema";
  barra.appendChild(invertir);

  invertir.onclick = function () {
    modoClaro = !modoClaro;
    aplicarModos();
  };

  // ------------------------
  // CONTRASTE ALTO
  // ------------------------
  let contrasteBtn = document.createElement("div");
  contrasteBtn.textContent = "⚫";
  contrasteBtn.title = "Contraste alto";
  barra.appendChild(contrasteBtn);

  contrasteBtn.onclick = function () {
    contraste = !contraste;
    aplicarModos();
  };

  // ------------------------
  // FUENTE GRANDE
  // ------------------------
  let fuenteBtn = document.createElement("div");
  fuenteBtn.textContent = "A";
  fuenteBtn.title = "Fuente grande";
  barra.appendChild(fuenteBtn);

  fuenteBtn.onclick = function () {
    if (fuenteGrande == false) {
      fuenteGrande = true;
      cuerpo.style.fontSize = "1.3em";
      cuerpo.style.lineHeight = "1.6em";
    } else {
      fuenteGrande = false;
      cuerpo.style.fontSize = "";
      cuerpo.style.lineHeight = "";
    }
  };

  // ------------------------
  // RESET
  // ------------------------
  let reset = document.createElement("div");
  reset.textContent = "↺";
  reset.title = "Restablecer";
  barra.appendChild(reset);

  reset.onclick = function () {
    zoom = 1;
    modoClaro = false;
    contraste = false;
    fuenteGrande = false;

    cuerpo.style.zoom = 1;
    cuerpo.style.fontSize = "";
    cuerpo.style.lineHeight = "";
    cuerpo.classList.remove("tema-claro", "modo-contraste", "fuente-grande");
  };

  // ------------------------
  // FUNCIÓN MODOS
  // ------------------------
  function aplicarModos() {
    cuerpo.classList.toggle("tema-claro", modoClaro);
    cuerpo.classList.toggle("modo-contraste", contraste);
  }
};

// Efecto de resplandor de fondo
document.addEventListener("mousemove", (e) => {
  const body = document.body;
  body.style.background = `radial-gradient(600px at ${e.clientX}px ${e.clientY}px, var(--mouse-glow), transparent 80%), linear-gradient(180deg, var(--bg-deep) 0%, var(--bg-base) 58%, var(--bg-tail) 100%)`;
});
