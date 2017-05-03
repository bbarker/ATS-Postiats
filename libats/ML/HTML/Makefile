#
# For generating
# syntax highlighting
#
######
#
# EMBED=--embedded
#
PATS2XHTML=$(PATSHOME)/bin/pats2xhtml $(EMBED)
#
######

all::

######

all:: all_sats
all:: all_dats

######

######
#
# SATS
#
######

all_sats:: \
intrange_sats.html
intrange_sats.html: \
./../SATS/intrange.sats; $(PATS2XHTML) -o SATS/$@ --static $<

all_sats:: \
funset_sats.html
funset_sats.html: \
./../SATS/funset.sats; $(PATS2XHTML) -o SATS/$@ --static $<
all_sats:: \
funmap_sats.html
funmap_sats.html: \
./../SATS/funmap.sats; $(PATS2XHTML) -o SATS/$@ --static $<

all_sats:: \
hashtblref_sats.html
hashtblref_sats.html: \
./../SATS/hashtblref.sats; $(PATS2XHTML) -o SATS/$@ --static $<

######

######
#
# DATS
#
######

all_dats:: \
intrange_dats.html
intrange_dats.html: \
./../DATS/intrange.dats; $(PATS2XHTML) -o DATS/$@ --dynamic $<

all_dats:: \
funset_dats.html
funset_dats.html: \
./../DATS/funset.dats; $(PATS2XHTML) -o DATS/$@ --dynamic $<
all_dats:: \
funmap_dats.html
funmap_dats.html: \
./../DATS/funmap.dats; $(PATS2XHTML) -o DATS/$@ --dynamic $<

all_dats:: \
hashtblref_dats.html
hashtblref_dats.html: \
./../DATS/hashtblref.dats; $(PATS2XHTML) -o DATS/$@ --dynamic $<

######
#
PHP=php
SCP=scp
MAKE=make
#
######
#
ATSLIBlibatsMLall0:: ; \
$(PHP) -f \
ATSLIB_libats_ML_all_in_one_raw.php > ATSLIB_libats_ML_all_in_one.raw
#
ATSLIBlibatsMLall1:: ; \
$(MAKE) EMBED=--embedded -f Makefile all
ATSLIBlibatsMLall2:: ; \
$(PHP) -f \
ATSLIB_libats_ML_all_in_one_html.php > ATSLIB_libats_ML_all_in_one.html
#
######

upload_all_in_one: ; \
$(SCP) \
ATSLIB_libats_ML_all_in_one.raw \
ATSLIB_libats_ML_all_in_one.html \
ats-hwxi,ats-lang@web.sourceforge.net:htdocs/DOCUMENT/ATS-Postiats/libats/ML/HTML/.

######

RMF=rm -f

######

clean:: ; $(RMF) *~

######

cleanall:: clean
cleanall:: ; $(RMF) *_ats.html
cleanall:: ; $(RMF) *_?ats.html
cleanall:: ; $(RMF) SATS/*_sats.html
cleanall:: ; $(RMF) DATS/*_dats.html
cleanall:: ; $(RMF) ATSLIB_libats_ML_all_in_one.raw
cleanall:: ; $(RMF) ATSLIB_libats_ML_all_in_one.html

######

###### end of [Makefile] ######