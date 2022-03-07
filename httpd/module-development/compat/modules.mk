mod_compat.la: mod_compat.slo
	$(SH_LINK) -rpath $(libexecdir) -module -avoid-version  mod_compat.lo
DISTCLEAN_TARGETS = modules.mk
shared =  mod_compat.la
