COMPILER = scss
SCSS_V330 := $(shell gem list sass --installed --version '>= 3.3.0')
SOURCEMAP = none
STYLE = expanded
SCSS_FLAGS = -r ./utils/helper.rb --style=$(STYLE) --unix-newlines
WATCH_FLAGS = $(SCSS_FLAGS) --watch
SOURCE_DIR = scss
OUTPUT_DIR = css
SR_FILE = terriblename
US_FILE = userstyle
US_NIGHT_FILE = userstyle-nightmode

COMMON_SOURCES := $(wildcard $(SOURCE_DIR)/_*.scss) \
	$(wildcard $(SOURCE_DIR)/res/normal/*.scss) \
	$(SOURCE_DIR)/res/_comment_reset.scss

SR_SOURCES := $(COMMON_SOURCES) \
	$(wildcard $(SOURCE_DIR)/res/nightmode/*.scss) \
	$(SOURCE_DIR)/$(SR_FILE).scss

US_SOURCES := $(COMMON_SOURCES) \
	$(wildcard $(SOURCE_DIR)/userstyle/*.scss) \
	$(SOURCE_DIR)/$(US_FILE).scss

US_NIGHT_SOURCES := $(SOURCE_DIR)/_variables.scss \
	$(SOURCE_DIR)/userstyle/_variables.scss \
	$(SOURCE_DIR)/_mixins.scss \
	$(SOURCE_DIR)/_placeholders.scss \
	$(wildcard $(SOURCE_DIR)/res/nightmode/*.scss) \
	$(wildcard $(SOURCE_DIR)/userstyle/nightmode/*.scss) \
	$(SOURCE_DIR)/$(US_NIGHT_FILE).scss

ifeq "$(SCSS_V330)" "true"
	SCSS_FLAGS += --sourcemap=$(SOURCEMAP)
endif

# $ASSETS controls the content of image variables. if it's set to `local` it will use
# relative paths of files inside images/ directory. if it's set to `remote` it will use
# %%image-name%% notation (for subreddit style) and images hosted on imgur (for userstyles)
export ASSETS = remote
export STYLE

all: $(OUTPUT_DIR)/$(SR_FILE).css \
	$(OUTPUT_DIR)/$(US_FILE).css \
	$(OUTPUT_DIR)/$(US_NIGHT_FILE).css

$(OUTPUT_DIR)/$(SR_FILE).css: $(SR_SOURCES)
	$(COMPILER) $(SCSS_FLAGS) $(SOURCE_DIR)/$(SR_FILE).scss $(OUTPUT_DIR)/$(SR_FILE).css

$(OUTPUT_DIR)/$(US_FILE).css: $(US_SOURCES)
	$(COMPILER) $(SCSS_FLAGS) $(SOURCE_DIR)/$(US_FILE).scss $(OUTPUT_DIR)/$(US_FILE).css

$(OUTPUT_DIR)/$(US_NIGHT_FILE).css: $(US_NIGHT_SOURCES)
	$(COMPILER) $(SCSS_FLAGS) $(SOURCE_DIR)/$(US_NIGHT_FILE).scss $(OUTPUT_DIR)/$(US_NIGHT_FILE).css

.PHONY: watch-all
watch-all:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR):$(OUTPUT_DIR)

.PHONY: watch-$(SR_FILE).css
watch-$(SR_FILE).css:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR)/$(SR_FILE).scss:$(OUTPUT_DIR)/$(SR_FILE).css

.PHONY: watch-$(US_FILE).css
watch-$(US_FILE).css:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR)/$(US_FILE).scss:$(OUTPUT_DIR)/$(US_FILE).css

.PHONY: watch-$(US_NIGHT_FILE).css
watch-$(US_NIGHT_FILE).css:
	$(COMPILER) $(WATCH_FLAGS) $(SOURCE_DIR)/$(US_NIGHT_FILE).scss:$(OUTPUT_DIR)/$(US_NIGHT_FILE).css

.PHONY: clean
clean:
	-rm -f $(OUTPUT_DIR)/$(SR_FILE).css \
		$(OUTPUT_DIR)/$(US_FILE).css \
		$(OUTPUT_DIR)/$(US_NIGHT_FILE).css \
		$(OUTPUT_DIR)/$(SR_FILE).css.map \
		$(OUTPUT_DIR)/$(US_FILE).css.map \
		$(OUTPUT_DIR)/$(US_NIGHT_FILE).css.map
