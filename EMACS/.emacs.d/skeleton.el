;;
;; skeleton.el for skeleton in /home/besnar_n/.emacs.d
;; 
;; Made by nicolas besnard
;; Login   <besnar_n@epitech.net>
;; 
;; Started on  Fri Apr 13 21:41:14 2012 
;; Last update Sun Jan 20 17:23:21 2013 nicolas besnard
;;

;; Skeleton des headers protege
(define-skeleton insert-protect-header
  "Inserts a define to protect the header file."
  ""
  '(setq str (file-name-sans-extension
	      (file-name-nondirectory (buffer-file-name))))
  "#ifndef				"(upcase str)"_H_\n"
  "# define			"(upcase str)"_H_\n"
  "\n"
  "\n"
  "\n"
  "#endif				/* !"(upcase str)"_H_ */"
)

;; Skeleton des hheaders protege
(define-skeleton insert-protect-hheader
  "Inserts a define to protect the hheader file."
  ""
  '(setq str (file-name-sans-extension
	      (file-name-nondirectory (buffer-file-name))))
  "#ifndef				"(upcase str)"_HH_\n"
  "# define			"(upcase str)"_HH_\n"
  "\n"
  "\n"
  "\n"
  "#endif				/* !"(upcase str)"_HH_ */"
)

;; Skeleton des Makefiles
(define-skeleton create-makefile
  "Create a Makefile."
  ""
  "NAME		=	\n"
  "\n"
  "CC		=	gcc\n"
  "\n"
  "RM		=	rm -f\n"
  "\n"
  "CFLAGS	\t=	-Wextra -Wall -Werror\n"
  "CFLAGS	\t+=	-ansi -pedantic\n"
  "CFLAGS	\t+=	-Ilib/include/ -Iheaders/\n"
  "\n"
  "LDFLAGS	\t=	-Llib/ -lmy\n"
  "#LDFLAGS	+=	-L/usr/lib64 -l mlx -L/usr/lib64/X11 -lXext -lX11\n"
  "\n"
  "SRCS		=	$(wildcard *.c) \n"
  "\n"
  "OBJS		=	$(SRCS:.c=.o)\n"
  "\n"
  "ECHO		=	echo -e\n"
  "\n"
  "all		:	$(NAME)\n"
  "\n"
  "$(NAME)	\t:	$(OBJS)\n"
  "			@$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)\n"
  "			@$(ECHO) '\\033[1;37;44m> Compiled {\\033[4m$(NAME)}\\033[0m'\n"
  "\n"
  "clean	\t:\n"
  "			-@$(RM) $(OBJS)\n"
  "			@$(ECHO) '\\033[1;37;41m> Directory cleaned\\033[0m'\n"
  "\n"
  "fclean	\t:	clean\n"
  "			-@$(RM) $(NAME)\n"
  "			@$(ECHO) '\\033[1;37;41m> Remove executable\\033[0m'\n"
  "\n"
  "re		:	fclean all\n"
  "\n"
  ".PHONY	\t:	all clean re\n"
)