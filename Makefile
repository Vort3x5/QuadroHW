all: optimize

optimize:
	cd c++-model && tcsh run-test.csh
	lua mx_err.lua
