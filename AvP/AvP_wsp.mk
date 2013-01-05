.PHONY: clean All

All:
	@echo ----------Building project:[ AvP - pandora release ]----------
	@"$(MAKE)" -f "AvP.mk"
clean:
	@echo ----------Cleaning project:[ AvP - pandora release ]----------
	@"$(MAKE)" -f "AvP.mk" clean
