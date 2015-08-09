# This contains the base parts of a neural network

class Neuron
  constructor: (@numWeights) =>
    @weights = (Math.random() for i in [0..@numWeights])

  get: () =>
    @weights

  set: (newWeights) =>
    @weights = newWeights

  reset: () =>
    @weight = (Math.random() for i in [0..@numWeights])

  update: (vals) =>
    @weights = (@weights[i] * vals[i] for i in [0..@numWeights])

class Layer
  constructor: (@numNeurons, @numWeights) =>
    @layer = (new Neuron(@numWeights) for i in [0..@numNeurons)

  get: () =>
    (i.get() for i in [0..@numLayers])

  set: (newLayers) =>
    @layers = newLayers

  reset: () =>
    i.reset() for i in [0..@numLayers]

delta: (val) =>


class net
  constructor: (@numLayers, @numNeurons, @numWeights) =>
    @layers = (new Layer(@numNeurons, @numWeights) for i in [0..@numLayers])
