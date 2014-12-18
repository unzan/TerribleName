COMPILER = scss
SCSS_V330 = $(shell gem list sass --installed --version '>= 3.3.0')
SOURCEMAP = none
SCSS_FLAGS = --style=expanded --unix-newlines
WATCH_FLAGS = $(SCSS_FLAGS) --watch
SOURCE_DIR = scss
OUTPUT_DIR = .
SR_FILE = terriblename
US_FILE = userstyle

ifeq "$(SCSS_V330)" "true"
	SCSS_FLAGS += --sourcemap=$(SOURCEMAP)
endif

all: $(SR_FILE).css $(US_FILE).css

$(SR_FILE).css:
	$(COMPILER) $(SCSS_FLAGS) $(SOURCE_DIR)/$(SR_FILE).scss $(OUTPUT_DIR)/$(SR_FILE).css

$(US_FILE).css:
	$(COMPILER) $(SCSS_FLAGS) $(SOURCE_DIR)/$(US_FILE).scss $(OUTPUT_DIR)/$(US_FILE).css

watch-all:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR):$(OUTPUT_DIR)

watch-$(SR_FILE).css:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR)/$(SR_FILE):$(OUTPUT_DIR)/$(SR_FILE).css

watch-$(US_FILE).css:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR)/$(US_FILE):$(OUTPUT_DIR)/$(US_FILE).css

.PHONY: clean

clean:
	-rm -f $(OUTPUT_DIR)/$(SR_FILE).css \
		$(OUTPUT_DIR)/$(US_FILE).css \
		$(OUTPUT_DIR)/$(SR_FILE).css.map \
		$(OUTPUT_DIR)/$(US_FILE).css.map
