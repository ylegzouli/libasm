#ifndef LIBASM_H
# define LIBASM_H

# include <stdlib.h>

typedef struct	s_list
{
	void			*data;
	struct s_list	*next;
}				t_list;

size_t	ft_strlen(const char *s);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char *dst, const char *src);
size_t	ft_write(int fd, const void *buf, size_t nb);
size_t	ft_read(int fd, void *buf, size_t nb);
char	*ft_strdup(const char *s1);
int		ft_lst_size(t_list *li);

#endif
