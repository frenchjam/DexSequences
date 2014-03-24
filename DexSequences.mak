# This makefile is used to make it easy to run the script generating batch file from within Virtual Studio.
# Building (F7) the project will cause this makefile to be executed.

# Define rules to convert .xls to .txt, so that we don't have to specify each one.
.SUFFIXES: .txt .xls

# Here we would like to generate text files from Excel files. 
# I don't have a progam to do that. So instead we just give a warning when the text file is older than the Excel source file.

COMPILER	= ..\DexSequenceUpdateWarning\debug\DexSequenceUpdateWarning.exe

TARGETED		= TargetedTargetsHorizontal.txt TargetedTargetsVertical.txt
OSCILLATIONS	= OscillationRangesNominalHorizontal.txt OscillationRangesNominalVertical.txt OscillationRangesReducedHorizontal.txt OscillationRangesReducedVertical.txt
DISCRETE		= DiscreteRangesHorizontal.txt DiscreteRangesVertical.txt DiscreteDelaySequences.txt
COLLISIONS		= CollisionSequences.txt

all: $(COMPILER)  $(TARGETED) $(OSCILLATIONS) $(DISCRETE) $(COLLISIONS)

# Define implicit rules to convert .xls to .txt, so that we don't have to specify each one.
.xls.txt:
	$(COMPILER) $@