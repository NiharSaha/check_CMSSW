import FWCore.ParameterSet.Config as cms

unpackedTracksAndVertices = cms.EDProducer('TrackAndVertexUnpacker',
  packedPFCandidates = cms.InputTag('packedPFCandidates'),
  lostTracks = cms.InputTag('lostTracks'),
  packedPFCandidateNormChi2Map = cms.InputTag('packedPFCandidateTrackChi2'),
  lostTrackNormChi2Map = cms.InputTag('lostTrackChi2'),
  primaryVertices = cms.InputTag('offlineSlimmedPrimaryVertices'),
  secondaryVertices = cms.InputTag('slimmedSecondaryVertices'),
  recoverTracks = cms.bool(False),
  mightGet = cms.optional.untracked.vstring
)
