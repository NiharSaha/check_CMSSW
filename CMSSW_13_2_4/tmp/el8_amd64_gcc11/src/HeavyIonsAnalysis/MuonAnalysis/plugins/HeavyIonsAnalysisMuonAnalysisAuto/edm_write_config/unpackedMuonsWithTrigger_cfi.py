import FWCore.ParameterSet.Config as cms

unpackedMuonsWithTrigger = cms.EDProducer('EmbedL1HLTinMuons',
  muons = cms.InputTag('unpackedMuons'),
  triggerResults = cms.InputTag('TriggerResults', '', 'HLT'),
  triggerObjects = cms.InputTag('slimmedPatTrigger', '', 'PAT'),
  mightGet = cms.optional.untracked.vstring
)
