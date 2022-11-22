/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: troudot <troudot@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/10 07:03:13 by troudot           #+#    #+#             */
/*   Updated: 2022/11/22 05:06:32 by troudot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

// static int	ft_cnt_finish(char const *s1, char const *set)
// {
// 	size_t	i;
// 	size_t	j;

// 	j = 0;
// 	i = ft_strlen(s1) - 1;
// 	while (i >= 0 && j <= (ft_strlen(set) - 1))
// 	{
// 		if (s1[i] == set[j])
// 		{
// 			j = 0;
// 			i--;
// 			continue ;
// 		}
// 		j++;
// 	}
// 	return (i);
// }

// char	*ft_strtrim(char const *s1, char const *set)
// {
// 	char	*start;
// 	char	*finish;
// 	int		size;
// 	char	*str;

// 	if (!s1 || !set)
// 		return (NULL);
// 	while (*s1 && ft_checktrim(*s1, set))
// 		s1++;
// 	start = (char *) s1;
// 	finish = ft_itoa(ft_cnt_finish(s1, set));
// 	size = finish - start + 1;
// 	str = malloc(sizeof(char) * size);
// 	if (!str)
// 		return (NULL);
// 	ft_strlcpy(str, start, size);
// 	return (str);
// }

static int	ft_checktrim(char c, char const *set)
{
	while (*set)
		if (*set++ == c)
			return (1);
	return (0);
}

static int	ft_get_size(char const *s1, char const *set)
{
	int		i;
	int		size;

	size = ft_strlen(s1);
	i = 0;
	while (ft_checktrim(s1[size - i - 1], set))
		i++;
	return (size - i);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	int		i;
	int		size;
	char	*str;

	i = 0;
	size = 0;
	if (!s1)
		return (0);
	if (!set)
		return (ft_strdup(s1));
	while (ft_checktrim(s1[i], set))
		i++;
	size = ft_get_size(s1 + i, set) + 1;
	str = (char *)malloc((size) * sizeof(char));
	if (!str)
		return (0);
	ft_strlcpy(str, s1 + i, size);
	return (str);
}