#include "libasm.h"
#include <stdio.h>
#include <string.h>

int		main(int ac, char **av)
{
	int		ret1;
	int		ret2;
	char	*dest;

	printf("_____________________________________________\n");
	printf("FT_STRLEN\n");
	printf("\n");
	printf("'bonjour' --- [%zu]\n", ft_strlen("bonjour"));
	printf("'bonjour' --- [%zu]\n", strlen("bonjour"));
	printf("\n");
	printf("'salutsalutsalut' --- [%zu]\n", ft_strlen("salutsalutsalut"));
	printf("'salutsalutsalut' --- [%zu]\n", strlen("salutsalutsalut"));
	printf("\n");
	printf("'' --- [%zu]\n", ft_strlen(""));
	printf("'' --- [%zu]\n", strlen(""));
	printf("\n");
	printf("'A' --- [%zu]\n", ft_strlen("A"));
	printf("'A' --- [%zu]\n", strlen("A"));
	
	printf("_____________________________________________\n");
	printf("FT_STRCMP\n");
	printf("\n");
	ret1 = ft_strcmp("bonjour", "bonjour");
	ret2 = strcmp("bonjour", "bonjour");
	printf("'bonjour', 'bonjour' --- [%d]\n", ret1);
	printf("'bonjour', 'bonjour' --- [%d]\n", ret2);
	printf("\n");
	ret1 = ft_strcmp("bonjour1", "bonjour8");
	ret2 = strcmp("bonjour1", "bonjour8");
	printf("'bonjour1', 'bonjour8' --- [%d]\n", ret1);
	printf("'bonjour1', 'bonjour8' --- [%d]\n", ret2);
	printf("\n");
	ret1 = ft_strcmp("bonjour8", "bonjour1");
	ret2 = strcmp("bonjour8", "bonjour1");
	printf("'bonjour8', 'bonjour1' --- [%d]\n", ret1);
	printf("'bonjour8', 'bonjour1' --- [%d]\n", ret2);
	printf("\n");
	ret1 = ft_strcmp("", "bonjour");
	ret2 = strcmp("", "bonjour");
	printf("'', 'bonjour' --- [%d]\n", ret1);
	printf("'', 'bonjour' --- [%d]\n", ret2);
	printf("\n");
	ret1 = ft_strcmp("bonjour", "");
	ret2 = strcmp("bonjour", "");
	printf("'bonjour', '' --- [%d]\n", ret1);
	printf("'bonjour', '' --- [%d]\n", ret2);
	printf("\n");
	ret1 = ft_strcmp("", "");
	ret2 = strcmp("", "");
	printf("'', '' --- [%d]\n", ret1);
	printf("'', '' --- [%d]\n", ret2);
	printf("\n");
	ret1 = ft_strcmp("bonjour", "bon");
	ret2 = strcmp("bonjour", "bon");
	printf("'bonjour', 'bon' --- [%d]\n", ret1);
	printf("'bonjour', 'bon' --- [%d]\n", ret2);
	printf("\n");
	ret1 = ft_strcmp("bo", "bonjour");
	ret2 = strcmp("bo", "bonjour");
	printf("'bo', 'bonjour' --- [%d]\n", ret1);
	printf("'bo', 'bonjour' --- [%d]\n", ret2);
	
	printf("_____________________________________________\n");
	printf("FT_STRCPY\n");
	printf("\n");
	ft_strcpy(dest, "bonjour");
	printf("dest: [%s]\n", dest);
	ft_strcpy(dest, "bonjour");
	printf("dest: [%s]\n", dest);

	
	printf("_____________________________________________\n");
	printf("FT_READ\n");

	printf("_____________________________________________\n");
	printf("FT_WRITE\n");
	
	printf("_____________________________________________\n");
	printf("FT_STRDUP\n");

	printf("_____________________________________________\n");
	return (0);
}
