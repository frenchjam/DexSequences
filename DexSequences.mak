# This makefile is used to make it easy to run the script generating batch file from within Virtual Studio.
# Building (F7) the project will cause this makefile to be executed.

COMPILER	= DexSequenceUpdateWarning.exe

all: $(COMPILER) TargetedTargetsHorizontal.txt TargetedTargetsVertical.txt  OscillationRangesHorizontal.txt OscillationRangesVertical.txt DiscreteRangesHorizontal.txt DiscreteRangesVertical.txt CollisionSequences.txt DiscreteDelaySequences.txt

$(COMPILER): ..\DexSequenceUpdateWarning\debug\DexSequenceUpdateWarning.exe
	copy ..\DexSequenceUpdateWarning\debug\DexSequenceUpdateWarning.exe .

TargetedTargetsHorizontal.txt: TargetedTargetsHorizontal.xls
	$(COMPILER) TargetedTargetsHorizontal.txt

TargetedTargetsVertical.txt: TargetedTargetsVertical.xls
	$(COMPILER) TargetedTargetsVertical.txt

CollisionSequences.txt: CollisionSequences.xls
	$(COMPILER) CollisionSequences.txt

DiscreteDelaySequences.txt: DiscreteDelaySequences.xls
	$(COMPILER) DiscreteDelaySequences.txt

DiscreteRangesVertical.txt: DiscreteRangesVertical.xls
	$(COMPILER) DiscreteRangesVertical.txt

OscillationRangesHorizontal.txt: OscillationRangesHorizontal.xls
	$(COMPILER) OscillationRangesHorizontal.txt

OscillationRangesVertical.txt: OscillationRangesVertical.xls
	$(COMPILER) OscillationRangesHorizontal.txt

