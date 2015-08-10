# This contains the base parts of a neural network
BIAS = -1

class Neuron
  constructor: (@numWeights) =>
    @weights = (Math.random() for i in [0..@numWeights])

  get: () =>
    @weights

  set: (newWeights) =>
    @weights = newWeights

  reset: () =>
    @weight = (Math.random() for i in [0..@numWeights])

  getSum: (vals) =>
    Math.sum(@weights[i] * vals[i] for i in [0..@numWeights])

class Layer
  constructor: (@numNeurons, @numWeights) =>
    @layers = (new Neuron(@numWeights) for i in [0..@numNeurons)

  get: () =>
    (@layers[i].get() for i in [0..@numLayers])

  set: (newLayers) =>
    @layers = newLayers

  reset: () =>
    @layers[i].reset() for i in [0..@numLayers]

  update: (inputs, response) =>
    set(delta(@layers[i].getSum(inputs) + @layers[i].get() * BIAS, response)

delta: (theSum, response) =>
  (1 / (1 + Math.exp(-1 * theSum / response)))

class net
  constructor: (@numLayers, @numNeurons, @numWeights) =>
    @layers = (new Layer(@numNeurons, @numWeights) for i in [0..@numLayers])
