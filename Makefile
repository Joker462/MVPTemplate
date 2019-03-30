XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates

TEMPLATES_DIR=MVP\ Template

install:install_templates
	@echo "Install Done"

install_templates:
	rm -R -f $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	cp -R -f $(TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall_templates:
	@rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)

uninstall: uninstall_templates
	@echo "Uninstall Done"
