import artefactos.*

object rolando {
    const capacidadDeArtefactos = 2
    const property mochila = []

    method recogerArtefacto(artefacto) {
      self.validarEspacioEnMochila() 
      self.validarSiTieneArtefacto(artefacto) 
      mochila.add(artefacto)
    }

    // Excepcion
    method validarEspacioEnMochila() {
      if ( not (mochila.size() < capacidadDeArtefactos)) {
        self.error("No hay espacio en la mochila, el limite actual es  " + capacidadDeArtefactos)
      }
    }

    // Excepcion
    method validarSiTieneArtefacto(artefacto) {
      if ( (mochila.contains(artefacto))) {
        self.error("No se puede agregar el artefacto " + artefacto + " porque ya esta en la mochila")
      }
    }
}

