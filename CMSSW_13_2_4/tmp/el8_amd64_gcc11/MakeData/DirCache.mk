ALL_SUBSYSTEMS+=HeavyIonsAnalysis
subdirs_src_HeavyIonsAnalysis = src_HeavyIonsAnalysis_Configuration src_HeavyIonsAnalysis_EGMAnalysis src_HeavyIonsAnalysis_EventAnalysis src_HeavyIonsAnalysis_JetAnalysis src_HeavyIonsAnalysis_MuonAnalysis src_HeavyIonsAnalysis_TrackAnalysis src_HeavyIonsAnalysis_ZDCAnalysis
subdirs_src += src_HeavyIonsAnalysis
ALL_PACKAGES += HeavyIonsAnalysis/Configuration
subdirs_src_HeavyIonsAnalysis_Configuration := src_HeavyIonsAnalysis_Configuration_python src_HeavyIonsAnalysis_Configuration_test
ifeq ($(strip $(PyHeavyIonsAnalysisConfiguration)),)
PyHeavyIonsAnalysisConfiguration := self/src/HeavyIonsAnalysis/Configuration/python
src_HeavyIonsAnalysis_Configuration_python_parent := src/HeavyIonsAnalysis/Configuration
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/Configuration/python)
PyHeavyIonsAnalysisConfiguration_files := $(patsubst src/HeavyIonsAnalysis/Configuration/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/Configuration/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisConfiguration_LOC_USE := self   
PyHeavyIonsAnalysisConfiguration_PACKAGE := self/src/HeavyIonsAnalysis/Configuration/python
ALL_PRODS += PyHeavyIonsAnalysisConfiguration
PyHeavyIonsAnalysisConfiguration_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisConfiguration,src/HeavyIonsAnalysis/Configuration/python,src_HeavyIonsAnalysis_Configuration_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisConfiguration,src/HeavyIonsAnalysis/Configuration/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_Configuration_python
src_HeavyIonsAnalysis_Configuration_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_Configuration_python,src/HeavyIonsAnalysis/Configuration/python,PYTHON))
ALL_PACKAGES += HeavyIonsAnalysis/EGMAnalysis
subdirs_src_HeavyIonsAnalysis_EGMAnalysis := src_HeavyIonsAnalysis_EGMAnalysis_plugins src_HeavyIonsAnalysis_EGMAnalysis_python src_HeavyIonsAnalysis_EGMAnalysis_src
ifeq ($(strip $(PyHeavyIonsAnalysisEGMAnalysis)),)
PyHeavyIonsAnalysisEGMAnalysis := self/src/HeavyIonsAnalysis/EGMAnalysis/python
src_HeavyIonsAnalysis_EGMAnalysis_python_parent := src/HeavyIonsAnalysis/EGMAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/EGMAnalysis/python)
PyHeavyIonsAnalysisEGMAnalysis_files := $(patsubst src/HeavyIonsAnalysis/EGMAnalysis/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/EGMAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisEGMAnalysis_LOC_USE := self   
PyHeavyIonsAnalysisEGMAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/EGMAnalysis/python
ALL_PRODS += PyHeavyIonsAnalysisEGMAnalysis
PyHeavyIonsAnalysisEGMAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisEGMAnalysis,src/HeavyIonsAnalysis/EGMAnalysis/python,src_HeavyIonsAnalysis_EGMAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisEGMAnalysis,src/HeavyIonsAnalysis/EGMAnalysis/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_EGMAnalysis_python
src_HeavyIonsAnalysis_EGMAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_EGMAnalysis_python,src/HeavyIonsAnalysis/EGMAnalysis/python,PYTHON))
ALL_PACKAGES += HeavyIonsAnalysis/EventAnalysis
subdirs_src_HeavyIonsAnalysis_EventAnalysis := src_HeavyIonsAnalysis_EventAnalysis_plugins src_HeavyIonsAnalysis_EventAnalysis_python
ifeq ($(strip $(PyHeavyIonsAnalysisEventAnalysis)),)
PyHeavyIonsAnalysisEventAnalysis := self/src/HeavyIonsAnalysis/EventAnalysis/python
src_HeavyIonsAnalysis_EventAnalysis_python_parent := src/HeavyIonsAnalysis/EventAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/EventAnalysis/python)
PyHeavyIonsAnalysisEventAnalysis_files := $(patsubst src/HeavyIonsAnalysis/EventAnalysis/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/EventAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisEventAnalysis_LOC_USE := self   
PyHeavyIonsAnalysisEventAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/EventAnalysis/python
ALL_PRODS += PyHeavyIonsAnalysisEventAnalysis
PyHeavyIonsAnalysisEventAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisEventAnalysis,src/HeavyIonsAnalysis/EventAnalysis/python,src_HeavyIonsAnalysis_EventAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisEventAnalysis,src/HeavyIonsAnalysis/EventAnalysis/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_EventAnalysis_python
src_HeavyIonsAnalysis_EventAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_EventAnalysis_python,src/HeavyIonsAnalysis/EventAnalysis/python,PYTHON))
ALL_PACKAGES += HeavyIonsAnalysis/JetAnalysis
subdirs_src_HeavyIonsAnalysis_JetAnalysis := src_HeavyIonsAnalysis_JetAnalysis_python src_HeavyIonsAnalysis_JetAnalysis_src
ifeq ($(strip $(PyHeavyIonsAnalysisJetAnalysis)),)
PyHeavyIonsAnalysisJetAnalysis := self/src/HeavyIonsAnalysis/JetAnalysis/python
src_HeavyIonsAnalysis_JetAnalysis_python_parent := src/HeavyIonsAnalysis/JetAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/JetAnalysis/python)
PyHeavyIonsAnalysisJetAnalysis_files := $(patsubst src/HeavyIonsAnalysis/JetAnalysis/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/JetAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisJetAnalysis_LOC_USE := self   
PyHeavyIonsAnalysisJetAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/JetAnalysis/python
ALL_PRODS += PyHeavyIonsAnalysisJetAnalysis
PyHeavyIonsAnalysisJetAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisJetAnalysis,src/HeavyIonsAnalysis/JetAnalysis/python,src_HeavyIonsAnalysis_JetAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisJetAnalysis,src/HeavyIonsAnalysis/JetAnalysis/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_JetAnalysis_python
src_HeavyIonsAnalysis_JetAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_JetAnalysis_python,src/HeavyIonsAnalysis/JetAnalysis/python,PYTHON))
ALL_PACKAGES += HeavyIonsAnalysis/MuonAnalysis
subdirs_src_HeavyIonsAnalysis_MuonAnalysis := src_HeavyIonsAnalysis_MuonAnalysis_plugins src_HeavyIonsAnalysis_MuonAnalysis_python src_HeavyIonsAnalysis_MuonAnalysis_src
ifeq ($(strip $(PyHeavyIonsAnalysisMuonAnalysis)),)
PyHeavyIonsAnalysisMuonAnalysis := self/src/HeavyIonsAnalysis/MuonAnalysis/python
src_HeavyIonsAnalysis_MuonAnalysis_python_parent := src/HeavyIonsAnalysis/MuonAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/MuonAnalysis/python)
PyHeavyIonsAnalysisMuonAnalysis_files := $(patsubst src/HeavyIonsAnalysis/MuonAnalysis/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/MuonAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisMuonAnalysis_LOC_USE := self   
PyHeavyIonsAnalysisMuonAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/MuonAnalysis/python
ALL_PRODS += PyHeavyIonsAnalysisMuonAnalysis
PyHeavyIonsAnalysisMuonAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisMuonAnalysis,src/HeavyIonsAnalysis/MuonAnalysis/python,src_HeavyIonsAnalysis_MuonAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisMuonAnalysis,src/HeavyIonsAnalysis/MuonAnalysis/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_MuonAnalysis_python
src_HeavyIonsAnalysis_MuonAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_MuonAnalysis_python,src/HeavyIonsAnalysis/MuonAnalysis/python,PYTHON))
ALL_PACKAGES += HeavyIonsAnalysis/TrackAnalysis
subdirs_src_HeavyIonsAnalysis_TrackAnalysis := src_HeavyIonsAnalysis_TrackAnalysis_plugins src_HeavyIonsAnalysis_TrackAnalysis_python src_HeavyIonsAnalysis_TrackAnalysis_src
ifeq ($(strip $(PyHeavyIonsAnalysisTrackAnalysis)),)
PyHeavyIonsAnalysisTrackAnalysis := self/src/HeavyIonsAnalysis/TrackAnalysis/python
src_HeavyIonsAnalysis_TrackAnalysis_python_parent := src/HeavyIonsAnalysis/TrackAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/TrackAnalysis/python)
PyHeavyIonsAnalysisTrackAnalysis_files := $(patsubst src/HeavyIonsAnalysis/TrackAnalysis/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/TrackAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisTrackAnalysis_LOC_USE := self   
PyHeavyIonsAnalysisTrackAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/TrackAnalysis/python
ALL_PRODS += PyHeavyIonsAnalysisTrackAnalysis
PyHeavyIonsAnalysisTrackAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisTrackAnalysis,src/HeavyIonsAnalysis/TrackAnalysis/python,src_HeavyIonsAnalysis_TrackAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisTrackAnalysis,src/HeavyIonsAnalysis/TrackAnalysis/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_TrackAnalysis_python
src_HeavyIonsAnalysis_TrackAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_TrackAnalysis_python,src/HeavyIonsAnalysis/TrackAnalysis/python,PYTHON))
ALL_PACKAGES += HeavyIonsAnalysis/ZDCAnalysis
subdirs_src_HeavyIonsAnalysis_ZDCAnalysis := src_HeavyIonsAnalysis_ZDCAnalysis_python src_HeavyIonsAnalysis_ZDCAnalysis_src
ifeq ($(strip $(PyHeavyIonsAnalysisZDCAnalysis)),)
PyHeavyIonsAnalysisZDCAnalysis := self/src/HeavyIonsAnalysis/ZDCAnalysis/python
src_HeavyIonsAnalysis_ZDCAnalysis_python_parent := src/HeavyIonsAnalysis/ZDCAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/ZDCAnalysis/python)
PyHeavyIonsAnalysisZDCAnalysis_files := $(patsubst src/HeavyIonsAnalysis/ZDCAnalysis/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/ZDCAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisZDCAnalysis_LOC_USE := self   
PyHeavyIonsAnalysisZDCAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/ZDCAnalysis/python
ALL_PRODS += PyHeavyIonsAnalysisZDCAnalysis
PyHeavyIonsAnalysisZDCAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisZDCAnalysis,src/HeavyIonsAnalysis/ZDCAnalysis/python,src_HeavyIonsAnalysis_ZDCAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisZDCAnalysis,src/HeavyIonsAnalysis/ZDCAnalysis/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_ZDCAnalysis_python
src_HeavyIonsAnalysis_ZDCAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_ZDCAnalysis_python,src/HeavyIonsAnalysis/ZDCAnalysis/python,PYTHON))
