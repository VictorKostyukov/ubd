# 
# Copyright (c) 2018 Drive Foundation
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
# 

ifeq ($(ROOT),)
$(error "Please define ROOT variable to point to the repository's root folder")
endif

OUTDIR = $(ROOT)/out
BINDIR = $(OUTDIR)/bin

ifneq ($(TARGETLIB),)
TARGETNAME = $(TARGETLIB)
TARGETFILENAME = $(TARGETNAME).a
else
ifneq ($(TARGETSO),)
TARGETNAME = $(TARGETSO)
TARGETFILENAME = $(TARGETNAME).so
else
TARGETNAME = $(TARGETEXE)
TARGETFILENAME = $(TARGETNAME)
endif
endif

OBJDIR = $(OUTDIR)/obj/$(TARGETNAME)

INCDIR = $(OUTDIR)/inc
