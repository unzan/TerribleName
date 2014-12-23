COMPILER = scss
SCSS_V330 = $(shell gem list sass --installed --version '>= 3.3.0')
SOURCEMAP = none
SCSS_FLAGS = --style=expanded --unix-newlines
WATCH_FLAGS = $(SCSS_FLAGS) --watch
SOURCE_DIR = scss
OUTPUT_DIR = .
SR_FILE = terriblename
US_FILE = userstyle
COMMON_SOURCES = $(wildcard scss/_*.scss) \
					  $(wildcard scss/res/normal/*.scss) \
					  scss/res/_stupid_fixes.scss

SR_SOURCES = $(COMMON_SOURCES) \
				 $(wildcard scss/res/nightmode/*.scss) \
				 scss/terriblename.scss

US_SOURCES = $(COMMON_SOURCES) \
				 $(wildcard scss/userstyle/*.scss) \
				 scss/userstyle.scss

ifeq "$(SCSS_V330)" "true"
	SCSS_FLAGS += --sourcemap=$(SOURCEMAP)
endif

all: $(SR_FILE).css $(US_FILE).css

$(SR_FILE).css: $(SR_SOURCES)
	$(COMPILER) $(SCSS_FLAGS) $(SOURCE_DIR)/$(SR_FILE).scss $(OUTPUT_DIR)/$(SR_FILE).css

$(US_FILE).css: $(US_SOURCES)
	$(COMPILER) $(SCSS_FLAGS) $(SOURCE_DIR)/$(US_FILE).scss $(OUTPUT_DIR)/$(US_FILE).css

.PHONY: watch-all
watch-all:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR):$(OUTPUT_DIR)

.PHONY: watch-$(SR_FILE).css
watch-$(SR_FILE).css:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR)/$(SR_FILE).scss:$(OUTPUT_DIR)/$(SR_FILE).css

.PHONY: watch-$(US_FILE).css
watch-$(US_FILE).css:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR)/$(US_FILE).scss:$(OUTPUT_DIR)/$(US_FILE).css

.PHONY: clean
clean:
	-rm -f $(OUTPUT_DIR)/$(SR_FILE).css \
		$(OUTPUT_DIR)/$(US_FILE).css \
		$(OUTPUT_DIR)/$(SR_FILE).css.map \
		$(OUTPUT_DIR)/$(US_FILE).css.map
