import artefactos.*

object rolando {
    const capacidadDeArtefactos = 2
    const property mochilaActual = []
    var property artefactosEncontrados = []
    var property artefactosTotales = []

    method encontrarArtefacto(artefacto) {
      artefactosEncontrados.add(artefacto)
      self.recogerArtefactoSiPuede(artefacto)
    }

    method recogerArtefactoSiPuede(artefacto) {
      if (mochilaActual.size() < capacidadDeArtefactos ) {
        self.recogerArtefacto(artefacto)
      }
    }

    method todosLosArtefactos() = mochilaActual + castilloDePiedra.deposito()

    method recogerArtefacto(artefacto) {
      self.validarEspacioEnMochila() 
      self.validarSiTieneArtefacto(artefacto) 
      mochilaActual.add(artefacto)
    }

    method guardarArtefacto(artefacto) {
      mochilaActual.remove(artefacto)
      castilloDePiedra.guardarArtefacto(artefacto)
    }

    // Excepcion
    method validarEspacioEnMochila() {
      if (mochilaActual.size() == capacidadDeArtefactos) {
        self.error("No hay espacio en la mochila, el limite actual es  " + capacidadDeArtefactos)
      }
    }

    // Excepcion
    method validarSiTieneArtefacto(artefacto) {
      if ( (mochilaActual.contains(artefacto))) {
        self.error("No se puede agregar el artefacto " + artefacto + " porque ya esta en la mochila")
      }
    }
}

object castilloDePiedra {
  const property deposito = []

    method guardarArtefacto(artefacto) {
        deposito.add(artefacto)
    }
}

