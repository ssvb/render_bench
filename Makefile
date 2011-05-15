SRCS = main.c
HEAD = 
FLGS = -g -I/usr/X11R6/include `imlib2-config --cflags`
LIBS = -L/usr/X11R6/lib -lm -lX11 -lXext -lXrender `imlib2-config --libs`
####################
OBJS = $(SRCS:.c=.o)

render_bench: $(OBJS)
	$(RM) $@
	$(CC) -o $@ $(OBJS) $(LIBS)

.c.o:
	$(CC) $(FLGS) -c $< -o $@

clean::
	rm -rf render_bench *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut "#"*
