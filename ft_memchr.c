/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: troudot <troudot@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/06 01:08:45 by troudot           #+#    #+#             */
/*   Updated: 2022/11/14 05:53:24 by troudot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	unsigned char	*str;

	str = ((unsigned char *)s);
	while (n--)
	{
		if (*str == (unsigned char)c)
			return ((unsigned char *)str);
		str++;
	}
	return (NULL);
}
