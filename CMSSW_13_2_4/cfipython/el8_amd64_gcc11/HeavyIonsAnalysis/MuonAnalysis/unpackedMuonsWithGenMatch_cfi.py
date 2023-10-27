import FWCore.ParameterSet.Config as cms

unpackedMuonsWithGenMatch = cms.EDProducer('EmbedMCinMuons',
  muons = cms.InputTag('unpackedMuons'),
  matchedGen = cms.InputTag('muonMatch'),
  mightGet = cms.optional.untracked.vstring
)
