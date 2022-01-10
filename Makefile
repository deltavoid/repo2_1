

PACKAGE_NAME=repo2_1



ifdef USE_USER_LIB
    CMAKE_PREIFX_PATH=""
    CMAKE_MODULE_PATH=""
else
    CMAKE_PREIFX_PATH=""
    CMAKE_MODULE_PATH=""
endif



BUILD_DIR ?= build
.PHONY: build clean
# default: run




build: $(BUILD_DIR)/Makefile
	cd $(BUILD_DIR) && make

$(BUILD_DIR)/Makefile: Makefile
	mkdir -p $(BUILD_DIR) \
	&& cmake -S . -B $(BUILD_DIR) \
	    -DCMAKE_PREFIX_PATH=$(CMAKE_PREFIX_PATH) \
		-DCMAKE_MODULE_PATH=$(CMAKE_MODULE_PATH)


clean:	
	rm -rf $(BUILD_DIR)


install: $(BUILD_DIR)/Makefile
	cd $(BUILD_DIR) && make install

uninstall:
	-rm -rf /usr/local/lib/$(PACKAGE_NAME)
	-rm -rf /usr/local/lib/cmake/$(PACKAGE_NAME)
	-rm -rf /usr/local/include/$(PACKAGE_NAME)



run: build
	$(BUILD_DIR)/binary1/binary1
